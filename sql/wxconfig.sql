CREATE TABLE `wxconfig` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) NOT NULL COMMENT 'appid',
  `appsecret` varchar(100) NOT NULL COMMENT '秘钥',
  `ipsbans` varchar(100) DEFAULT NULL COMMENT 'ip白名单',
  `serverurl` varchar(100) DEFAULT NULL COMMENT '消息传递url',
  `token` varchar(50) DEFAULT NULL COMMENT '令牌',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wxconfig_appid_uindex` (`appid`),
  UNIQUE KEY `wxconfig_appsecret_uindex` (`appsecret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='微信开发者配置表'