CREATE TABLE `departments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '部门名',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '父ID',
  `parent_chain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '父链',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '升序',
  `from_scene` int(11) NOT NULL DEFAULT 0 COMMENT '来源[0:本地]',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '学员上传图片日志记录表';
