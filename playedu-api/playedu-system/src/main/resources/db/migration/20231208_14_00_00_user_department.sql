CREATE TABLE `user_department` (
  `user_id` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '学员ID',
  `dep_id` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '部门ID',
  KEY `user_id` (`user_id`),
  KEY `dep_id` (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '学员部门关联表';
