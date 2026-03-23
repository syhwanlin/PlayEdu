CREATE TABLE `admin_logs`
(
    `id`             bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
    `admin_id`       int(11) NOT NULL DEFAULT 0 COMMENT '管理员ID',
    `admin_name`     varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理员姓名',
    `module`         varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '' COMMENT '模块',
    `title`          varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '' COMMENT '请求方法标题',
    `opt`            int(2) NOT NULL DEFAULT 0 COMMENT '操作指令（0其它 1新增 2修改 3删除 4登录 5退出登录）',
    `method`         varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '请求方法',
    `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '' COMMENT '请求方式POST,GET,PUT,DELETE',
    `url`            varchar(266) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '请求URL',
    `param`          mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '请求参数',
    `result`         mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '返回参数',
    `ip`             varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '' COMMENT 'IP',
    `ip_area`        varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '' COMMENT '地址',
    `error_msg`      mediumtext COLLATE utf8mb4_unicode_ci COMMENT '错误消息',
    `created_at`     timestamp NULL DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`),
    KEY              `a_m_o` (`admin_id`,`module`,`opt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '管理员操作日志记录表';
