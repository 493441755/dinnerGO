package controllers

import (
	"test/models"

	"github.com/astaxie/beego"
)

type BaseController struct {
	beego.Controller
}

func (this *MainController) Prepare() {
	if this.GetSession("userinfo") == nil {
		this.Redirect("/user/login", 302)
	} else {
		//载入模块配置信息

		models.LoadConfig()
	}
}
