package routers

import (
	"test/controllers"

	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/ding", &controllers.MainController{}, "*:Ding")
	beego.Router("/user", &controllers.UserController{})
	beego.Router("/user/login", &controllers.LoginController{})
	beego.Router("/user/runlogin", &controllers.LoginController{}, "*:Runlogin")
	beego.Router("/user/logout", &controllers.LoginController{}, "*:Logout")
}
