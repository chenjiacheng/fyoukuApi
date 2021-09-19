package redisClient

import (
	beego "github.com/beego/beego/v2/server/web"
	"time"

	"github.com/garyburd/redigo/redis"
)

// 直接连接
func Connect() redis.Conn {
	s, err := beego.AppConfig.String("redisdb")
	if err != nil {
		return nil
	}
	pool, _ := redis.Dial("tcp", s)
	return pool
}

// 通过连接池
func PoolConnect() redis.Conn {
	// 建立连接池
	pool := &redis.Pool{
		MaxIdle:     5000,              // 最大空闲连接数
		MaxActive:   10000,             // 最大连接数
		IdleTimeout: 180 * time.Second, // 空闲连接超时时间
		Wait:        true,              // 超过最大连接数时，是等待还是报错
		Dial: func() (redis.Conn, error) { // 建立链接
			s, err := beego.AppConfig.String("redisdb")
			if err != nil {
				return nil, err
			}
			c, err := redis.Dial("tcp", s)
			if err != nil {
				return nil, err
			}
			// 选择db
			// c.Do("SELECT", '')
			return c, nil
		},
	}
	return pool.Get()
}
