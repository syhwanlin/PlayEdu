CREATE TABLE `resource_extra`(
  `id`         int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rid`        int(11) unsigned NOT NULL DEFAULT 0 COMMENT '资源ID',
  `poster`     int(11) unsigned NOT NULL DEFAULT 0 COMMENT '封面资源ID',
  `duration`   int(10) unsigned NOT NULL DEFAULT 0 COMMENT '视频、音频总时长,文档总页数',
  `created_at` timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '资源详细信息表';
