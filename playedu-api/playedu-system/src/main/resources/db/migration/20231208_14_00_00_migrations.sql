CREATE TABLE `migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '变更记录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '课程章节表';
