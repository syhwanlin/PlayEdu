CREATE TABLE `user_course_records` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '学员ID',
  `course_id` int(11) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `hour_count` int(11) NOT NULL DEFAULT 0 COMMENT '课时数量',
  `finished_count` int(11) NOT NULL DEFAULT 0 COMMENT '已完成课时数',
  `progress` int(11) NOT NULL DEFAULT 0 COMMENT '进度',
  `is_finished` tinyint(4) NOT NULL DEFAULT 0 COMMENT '看完[1:是,0:否]',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT '看完时间',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '分类表';
