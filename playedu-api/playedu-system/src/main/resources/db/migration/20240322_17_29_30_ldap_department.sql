CREATE TABLE `ldap_department` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(64) NOT NULL DEFAULT '' COMMENT '唯一特征值',
  `department_id` int(11) NOT NULL DEFAULT 0 COMMENT '部门ID',
  `dn` varchar(120) NOT NULL DEFAULT '' COMMENT 'dn',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_uuid` (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
