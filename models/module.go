package models

import (
	"test/utils"

	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

type AdminModule struct {
	Id            int
	Name          string
	title         string
	Icon          string
	Description   string
	Author        string
	Author_url    string
	Config        string
	Access        string
	Version       string
	Identifier    string
	System_module int
	Create_time   int
	Update_time   int
	Sort          int
	Status        int
}

func init() {
	orm.RegisterModelWithPrefix("m_", new(AdminModule))

}

func LoadConfig() {

	var modules []AdminModule
	orm.NewOrm().QueryTable(new(AdminModule)).All(&modules, "Name", "config")
	for _, module := range modules {
		if &module == nil {
			continue
		}
		if !utils.GetInstance().ConfigIsExist(module.Name + "_config") {
			utils.GetInstance().ConfigSet(module.Name+"_config", module.Config)
		}

	}

}
