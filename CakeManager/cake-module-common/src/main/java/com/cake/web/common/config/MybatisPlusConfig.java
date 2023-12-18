package com.cake.web.common.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan("com.cake.web.common.domain.mapper")
public class MybatisPlusConfig {
}
