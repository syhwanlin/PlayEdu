CREATE TABLE `course_hour` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `course_id` int(11) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `chapter_id` int(11) NOT NULL DEFAULT 0 COMMENT '章节ID',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '升序',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '课时名',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '课时类型',
  `rid` int(11) NOT NULL DEFAULT 0 COMMENT '资源ID',
  `duration` int(11) NOT NULL DEFAULT 0 COMMENT '时长[s]',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `deleted` tinyint(1) unsigned NULL DEFAULT 0 COMMENT '删除标志[0:存在,1:删除]',
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '课程课时表';
