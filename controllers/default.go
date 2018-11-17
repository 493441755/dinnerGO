package controllers

import (
	"encoding/json"
	"fmt"
	"strconv"
	"strings"
	"test/models"
	"test/utils"
	"time"
)

type MainController struct {
	BaseController
}

func (c *MainController) Get() {

	//fmt.Println(utils.GetInstance().ConfigGet("meal_config"))
	userInfo := c.GetSession("userinfo")
	c.Data["userinfo"] = userInfo
	month := time.Now().Month()
	orderList := models.GetOrderByDayAndMonth(time.Now().Year(), month)

	//fmt.Println(orderList)
	//models.Da
	//o.QueryTable("user").All(&users)

	//c.Ctx.WriteString("66666")
	b, err := json.Marshal(orderList)
	if err == nil {
		c.Data["result"] = string(b)
		//fmt.Println(string(b))
	} else {
		fmt.Println(err)
	}
	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.TplName = "index.tpl"
}

func (c *MainController) Ding() {

	order := new(models.MealOrder)
	day, _ := c.GetInt("day", 0)
	month, _ := c.GetInt("month", 0)
	year, _ := c.GetInt("year", 0)
	weekday, _ := c.GetInt("weekday", 0)
	order.Day = day
	order.Month = month
	order.Year = year
	order.Weekday = weekday
	tm, err := time.Parse("1/2/2006", strconv.Itoa(month)+"/"+strconv.Itoa(day)+"/"+strconv.Itoa(year))
	if err != nil {
		fmt.Println(err)
	}
	currentHour := time.Now().Hour()
	//currentMinute := time.Minute
	curentYear := time.Now().Year()
	currentMonth := int(time.Now().Month())
	currentDay := time.Now().Day()

	if curentYear != year || currentMonth != month || currentDay != day {
		c.Data["json"] = map[string]string{"code": "0", "msg": "只能当天点餐"}
		c.ServeJSON()
		return
	} else {
		lunch_begin := utils.GetInstance().ConfigGet("meal_config.lunch_begin")
		var lunch_begin_int = 90000
		if lunch_begin != nil {
			lunch_begin_int, _ = strconv.Atoi(strings.Replace(lunch_begin.(string), ":", "", -1))
		}
		lunch_end := utils.GetInstance().ConfigGet("meal_config.lunch_end")
		var lunch_end_int = 103000
		if lunch_end != nil {
			lunch_end_int, _ = strconv.Atoi(strings.Replace(lunch_end.(string), ":", "", -1))
		}
		dinner_begin := utils.GetInstance().ConfigGet("meal_config.dinner_begin")
		var dinner_begin_int = 150000
		if dinner_begin != nil {
			dinner_begin_int, _ = strconv.Atoi(strings.Replace(dinner_begin.(string), ":", "", -1))
		}
		dinner_end := utils.GetInstance().ConfigGet("meal_config.dinner_end")
		var dinner_end_int = 163000
		if dinner_end != nil {
			dinner_begin_int, _ = strconv.Atoi(strings.Replace(dinner_end.(string), ":", "", -1))
		}
		var ap = "am"
		currentTime, _ := strconv.Atoi(time.Now().Format("150405"))
		if currentHour >= 12 {
			ap = "pm"
			if (currentTime < dinner_begin_int) || (currentTime > dinner_end_int) {
				c.Data["json"] = map[string]string{"code": "0", "msg": "不在点餐时间范围内"}
				c.ServeJSON()
				return
			}
		} else if currentTime < lunch_begin_int || currentTime > lunch_end_int {
			c.Data["json"] = map[string]string{"code": "0", "msg": "不在点餐时间范围内"}
			c.ServeJSON()
			return
		}

		order.Mealdate = tm
		timestamp := time.Now().UTC().Unix()
		order.Mealtime = int(timestamp)
		order.Ap = ap
		models.CreateOrder(order)
		c.Data["json"] = map[string]string{"code": "1", "msg": "点餐成功"}
		c.ServeJSON()
	}

}
