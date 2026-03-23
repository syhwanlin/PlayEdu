CREATE TABLE `admin_role_permission` (
  `role_id` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '角色ID',
  `perm_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '权限ID',
  KEY `role_id` (`role_id`),
  KEY `perm_id` (`perm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '管理员角色权限关联表';
