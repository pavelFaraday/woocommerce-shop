CREATE TABLE `wp_gla_shipping_times` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `country` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci