package controllers

import (
	"fmt"

	"test/models"
	"test/utils"

	"github.com/astaxie/beego"
)

type UserController struct {
	beego.Controller
}
type LoginController struct {
	beego.Controller
}

func (c *UserController) Get() {

	c.Data["username"] = c.Input().Get("username")
	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.TplName = "user.tpl"

}

func (c *LoginController) Get() {
	//c.Ctx.WriteString("login")
	c.TplName = "login.tpl"
}

func (c *LoginController) Post() {
	fmt.Println("666")
}

func (c *LoginController) Runlogin() {

	username := c.Input().Get("username")
	password := c.Input().Get("password")
	userInfo := models.GetUserByUserName(username)

	if userInfo.Username == "" {
		c.Data["json"] = map[string]string{"code": "0", "msg": "用户不存在或被禁用"}
	} else {

		if utils.CheckPasswordHash(password, userInfo.Password) {
			c.Data["json"] = map[string]string{"code": "1", "msg": "登陆成功"}
			c.SetSession("userinfo", userInfo)
		} else {
			c.Data["json"] = map[string]string{"code": "0", "msg": "登陆失败"}
		}

	}

	c.ServeJSON()
}

func (c *LoginController) Logout() {
	c.DelSession("userinfo")
	c.Data["json"] = map[string]string{"code": "1", "msg": "退出成功"}
	c.ServeJSON()
}
