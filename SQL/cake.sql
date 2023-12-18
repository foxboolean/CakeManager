-- 创建数据库
CREATE DATABASE IF NOT EXISTS cake
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_bin;

USE cake;
-- 用户表
CREATE TABLE `t_user`
(
    `id`          bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
    `username`    varchar(60)         NOT NULL COMMENT '用户名',
    `password`    varchar(60)         NOT NULL COMMENT '密码',
    `create_time` datetime            NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime            NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
    `is_deleted`  tinyint(2)          NOT NULL DEFAULT '0' COMMENT '逻辑删除：0：未删除 1：已删除',
    `phone`       varchar(60)         NULL COMMENT '联系电话',
    `address`     varchar(200)        NULL COMMENT '联系地址',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `uk_username` (`username`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4 COMMENT ='用户表';

-- 蛋糕表
CREATE TABLE `t_cake`
(
    `id`          bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
    `name`        int                 NOT NULL COMMENT '蛋糕名称',
    `stock`       int                 NOT NULL COMMENT '蛋糕库存',
    `img`         varchar(400)        NULL COMMENT '蛋糕图片',
    `create_time` datetime            NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime            NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
    `is_deleted`  tinyint(2)          NOT NULL DEFAULT '0' COMMENT '逻辑删除：0：未删除 1：已删除',
    `price`       varchar(60)         NULL COMMENT '单价',
    `weight`      varchar(200)        NULL COMMENT '蛋糕尺寸',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `uk_name` (`name`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4 COMMENT ='蛋糕表';

-- 订单表
CREATE TABLE `t_order`
(
    `id`          bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
    `user_id`     varchar(60)         NOT NULL COMMENT '用户 id',
    `cake_id`     varchar(60)         NOT NULL COMMENT '蛋糕 id',
    `create_time` datetime            NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime            NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
    `is_deleted`  tinyint(2)          NOT NULL DEFAULT '0' COMMENT '逻辑删除：0：未删除 1：已删除',
    `amount`      varchar(60)         NULL COMMENT '蛋糕数量',
    `remark`      varchar(200)        NULL COMMENT '订单备注',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4 COMMENT ='订单表';