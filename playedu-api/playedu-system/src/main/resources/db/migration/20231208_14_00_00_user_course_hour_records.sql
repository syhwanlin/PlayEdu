CREATE TABLE `user_course_hour_records` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '学员ID',
  `course_id` int(11) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `hour_id` int(11) NOT NULL DEFAULT 0 COMMENT '课时ID',
  `total_duration` int(11) NOT NULL DEFAULT 0 COMMENT '总时长',
  `finished_duration` int(11) NOT NULL DEFAULT 0 COMMENT '已完成时长',
  `real_duration` int(11) NOT NULL DEFAULT 0 COMMENT '实际观看时长',
  `is_finished` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否看完[1:是,0:否]',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT '看完时间',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `u_h_c_id` (`user_id`,`hour_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '线上课课时学员学习记录表';
