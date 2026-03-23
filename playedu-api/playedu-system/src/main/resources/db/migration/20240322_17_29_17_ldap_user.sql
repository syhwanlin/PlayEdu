CREATE TABLE `ldap_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(64) NOT NULL DEFAULT '' COMMENT '唯一特征值',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `cn` varchar(120) NOT NULL DEFAULT '' COMMENT 'cn',
  `dn` varchar(120) NOT NULL DEFAULT '' COMMENT 'dn',
  `ou` varchar(255) NOT NULL DEFAULT '' COMMENT 'ou',
  `uid` varchar(120) NOT NULL DEFAULT '' COMMENT 'uid',
  `email` varchar(120) NOT NULL DEFAULT '' COMMENT '邮箱',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_uuid` (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
