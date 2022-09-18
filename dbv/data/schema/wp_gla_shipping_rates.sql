CREATE TABLE `wp_gla_shipping_rates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rate` double NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `country` (`country`),
  KEY `method` (`method`),
  KEY `currency` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci