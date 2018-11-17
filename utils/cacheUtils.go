package utils

import (
	"encoding/json"
	"fmt"
	"strings"

	"github.com/astaxie/beego/cache"
)

type CatcheUtils struct {
	cc cache.Cache
}

var instance *CatcheUtils

func GetInstance() *CatcheUtils {
	if instance == nil {
		fmt.Println("-----nil----")
		instance = &CatcheUtils{}
		instance.cc, _ = cache.NewCache("memory", `{"interval":60}`)
	}
	return instance
}

func (this *CatcheUtils) ConfigGet(key string) interface{} {
	keys := strings.Split(key, ".")
	if len(keys) > 0 {
		fmt.Println(keys[0])
		if this.cc.IsExist(keys[0]) {
			c := this.cc.Get(keys[0])
			m := make(map[string]string)

			err := json.Unmarshal([]byte(c.(string)), &m)

			if err == nil {
				var cc interface{}
				cc = nil
				var i = 0
				for i = 1; i < len(keys); i++ {
					cc = m[keys[i]]
				}
				if cc != nil {
					return cc
				} else {
					return m
				}
			} else {
				return c
			}

		} else {
			fmt.Println("没有cache")
		}
	} else {
		fmt.Println("-----" + key + "------")
		return this.cc.Get(key)
	}

	return nil
}

func (this *CatcheUtils) ConfigSet(key string, value string) {
	err := this.cc.Put(key, value, 60)
	if err != nil {
		fmt.Println(this.cc.Get(key))
		fmt.Println(err)
	}
}

func (this *CatcheUtils) ConfigIsExist(key string) bool {
	return this.cc.IsExist(key)

}

func (this *CatcheUtils) ConfigClearAll() {
	this.cc.ClearAll()
}

func (this *CatcheUtils) ConfigDelete(key string) {
	this.cc.Delete(key)
}
