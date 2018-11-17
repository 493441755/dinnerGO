package models

import (
	"fmt"
	"time"

	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

type MealOrder struct {
	Id       int       `json:"id"`
	Uid      int       `json:"uid"`
	Day      int       `json:"day"`
	Month    int       `json:"month"`
	Year     int       `json:"year"`
	Weekday  int       `json:"weekday"`
	Mealtime int       `json:"mealtime"`
	Ap       string    `json:"ap"`
	Mealdate time.Time `json:"mealdate"`
}

func GetOrderByDayAndMonth(day int, month time.Month) (orders []MealOrder) {
	o := orm.NewOrm()
	qs := o.QueryTable(new(MealOrder))

	var order []MealOrder
	cnt, err := qs.Filter("year__eq", day).Filter("month__eq", month).All(&order, "id", "day")
	if err == nil && cnt > 0 {

	} else {
		fmt.Println("error")
		fmt.Println(err)
	}
	return order
}

func CreateOrder(order *MealOrder) int64 {
	o := orm.NewOrm()
	result, err := o.Insert(order)
	if err == nil {
		return result
	}
	return 0
}

func init() {
	orm.RegisterModelWithPrefix("m_", new(MealOrder))

}
