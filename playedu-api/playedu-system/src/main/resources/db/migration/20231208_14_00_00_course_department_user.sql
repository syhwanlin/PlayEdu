CREATE TABLE `course_department_user` (
  `course_id` int(11) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `range_id` int(11) NOT NULL DEFAULT 0 COMMENT '指派范围ID',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '指派范围类型[0:部门,1:学员]',
  KEY `course_id` ( `course_id` ),
  KEY `range_id` ( `range_id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '课程指派范围表';
