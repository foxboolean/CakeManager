package com.cake.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.cake.web.*"}) // 多模块项目中，必需手动指定扫描包路径
public class CakeWebApplication {

    public static void main(String[] args) {
        SpringApplication.run(CakeWebApplication.class, args);
    }

}