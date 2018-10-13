CREATE DATABASE General;

USE General;

DROP TABLE IF EXISTS `tenants`;

CREATE TABLE `tenants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  KEY `Tenants_id_IDX` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `tenants` VALUES (1,'TenantA'),(2,'TenantB');


CREATE DATABASE TenantA;

USE TenantA;


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  KEY `users_id_IDX` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `users` VALUES (1,'userA'),(2,'userB');


CREATE DATABASE TenantB;

USE TenantB;


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  KEY `users_id_IDX` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `users` VALUES (1,'userA'),(2,'userC');
