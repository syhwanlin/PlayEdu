CREATE TABLE `ldap_sync_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL DEFAULT '0' COMMENT '执行同步的管理员ID，0表示系统自动执行',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态：0-进行中，1-成功，2-失败',
  `s3_file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'S3存储中的文件路径',
  `total_department_count` int NOT NULL DEFAULT '0' COMMENT '总部门数量',
  `created_department_count` int NOT NULL DEFAULT '0' COMMENT '新增部门数量',
  `updated_department_count` int NOT NULL DEFAULT '0' COMMENT '更新部门数量',
  `deleted_department_count` int NOT NULL DEFAULT '0' COMMENT '删除部门数量',
  `total_user_count` int NOT NULL DEFAULT '0' COMMENT '总用户数量',
  `created_user_count` int NOT NULL DEFAULT '0' COMMENT '新增用户数量',
  `updated_user_count` int NOT NULL DEFAULT '0' COMMENT '更新用户数量',
  `deleted_user_count` int NOT NULL DEFAULT '0' COMMENT '删除用户数量',
  `banned_user_count` int NOT NULL DEFAULT '0' COMMENT '被禁止的用户数量',
  `error_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '错误信息',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='LDAP同步记录表';
