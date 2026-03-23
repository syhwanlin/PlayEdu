CREATE TABLE `resource_category` (
  `cid` int(11) NOT NULL DEFAULT 0 COMMENT '分类ID',
  `rid` int(11) NOT NULL DEFAULT 0 COMMENT '资源ID',
  KEY `cid` (`cid`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '资源分类关联表';
