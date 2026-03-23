CREATE TABLE `app_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `group_name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分组',
  `name` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '升序',
  `field_type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '字段类型',
  `key_name` varchar(188) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '键',
  `key_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '值',
  `option_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '可选值',
  `is_private` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否私密信息',
  `help` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '帮助信息',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_hidden` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1显示,0否',
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_config_key_unique` (`key_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '系统配置表';
