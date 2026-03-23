CREATE TABLE `resource_course_category` (
  `course_id` int(11) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `category_id` int(11) NOT NULL DEFAULT 0 COMMENT '父级ID',
  KEY `course_id` (`course_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '课程分类关联表';
