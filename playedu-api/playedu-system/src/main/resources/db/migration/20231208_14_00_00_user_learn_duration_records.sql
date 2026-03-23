CREATE TABLE `user_learn_duration_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '学员ID',
  `created_date` date NOT NULL COMMENT '创建时间',
  `duration` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '已学习时长[微秒]',
  `start_at` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_at` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `from_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '来源ID',
  `from_scene` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '记录来源[线上课:COURSE,学习任务:STUDY]',
  PRIMARY KEY (`id`),
  KEY `u_d` (`user_id`,`created_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '学员学习时长表';
