CREATE TABLE `resource` (
   `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
   `admin_id` int(11) NOT NULL DEFAULT 0 COMMENT '管理员ID',
   `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型',
   `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '资源名',
   `extension` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件类型',
   `size` bigint(20) DEFAULT 0 COMMENT '大小[字节]',
   `disk` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '存储磁盘',
   `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '相对地址',
   `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '所属素材',
   `is_hidden` tinyint(4) NOT NULL DEFAULT 0 COMMENT '隐藏[0:否,1:是]',
   `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
   PRIMARY KEY (`id`),
   KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '资源表';
