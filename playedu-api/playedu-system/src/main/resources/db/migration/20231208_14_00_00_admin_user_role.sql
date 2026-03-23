CREATE TABLE `admin_user_role` (
  `admin_id` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '角色ID',
  KEY `admin_id` (`admin_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '管理员角色关联表';
