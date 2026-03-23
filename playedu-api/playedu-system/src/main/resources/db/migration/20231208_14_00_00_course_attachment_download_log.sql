CREATE TABLE `course_attachment_download_log`
(
    `id`                    int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
    `user_id`               int(11) NOT NULL DEFAULT 0 COMMENT '学员ID',
    `course_id`             int(11) NOT NULL DEFAULT 0 COMMENT '课程ID',
    `title`                 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '课程标题',
    `courser_attachment_id` int(11) NOT NULL DEFAULT 0 COMMENT '课程附件ID',
    `rid`                   int(11) NOT NULL DEFAULT 0 COMMENT '资源ID',
    `ip`                    varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL DEFAULT '' COMMENT '下载IP',
    `created_at`            timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '课程附件下载日志记录表';
