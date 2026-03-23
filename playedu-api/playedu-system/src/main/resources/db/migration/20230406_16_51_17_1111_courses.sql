CREATE TABLE `courses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '课程标题',
  `thumb` int(11) NOT NULL DEFAULT 0 COMMENT '封面',
  `charge` int(11) NOT NULL DEFAULT 0 COMMENT '课程价格(分)',
  `short_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `class_hour` int(11) NOT NULL DEFAULT 0 COMMENT '课时数',
  `is_show` tinyint(4) NOT NULL DEFAULT 0 COMMENT '显示[1:是,0:否]',
  `is_required` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:必修,0:选修',
  `sort_at` timestamp NULL DEFAULT NULL COMMENT '排序时间',
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其它规则[设置]',
  `admin_id` int(11) NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '课程表';
