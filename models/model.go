package models

import (
	"fmt"

	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

type AdminUser struct {
	Id       int
	Username string
	Nickname string
	Password string

	Email           string
	Email_bind      string
	Mobile          string
	Mobile_bind     string
	Avatar          int
	Money           float32
	Score           int
	Role            int
	Group           int
	Signup_ip       int64
	Create_time     int
	Update_time     int
	Last_login_time int
	Last_login_ip   int64
	Sort            int
	Status          int8
}

//根据用户数据列表
func DataList() (users []AdminUser) {

	o := orm.NewOrm()
	qs := o.QueryTable(new(AdminUser))

	var us []AdminUser
	cnt, err := qs.Filter("id__gt", 0).OrderBy("-id").Limit(10, 0).All(&us)
	if err == nil {
		fmt.Printf("count", cnt)
	} else {
		fmt.Println(err)
	}
	return us
}

func GetUserByUserName(username string) (uInfo AdminUser) {
	o := orm.NewOrm()
	qs := o.QueryTable(new(AdminUser))
	var userInfo AdminUser
	err := qs.Filter("username__eq", username).One(&userInfo)
	if err == nil {
		//fmt.Printf("count", cnt)
	} else {
		//fmt.Println(err)
		//&userInfo = nil
	}
	fmt.Println(userInfo.Username == "")
	return userInfo
}

func init() {
	orm.RegisterModelWithPrefix("m_", new(AdminUser))

}
