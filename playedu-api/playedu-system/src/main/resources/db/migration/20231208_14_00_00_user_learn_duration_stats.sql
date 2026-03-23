CREATE TABLE `user_learn_duration_stats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '学员ID',
  `duration` bigint(20) NOT NULL DEFAULT 0 COMMENT '学习时长',
  `created_date` date NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `u_d` (`user_id`,`created_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '学员学习时长记录表';
