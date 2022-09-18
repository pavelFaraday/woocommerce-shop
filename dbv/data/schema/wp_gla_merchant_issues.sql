CREATE TABLE `wp_gla_merchant_issues` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `issue` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `severity` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'warning',
  `product` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action_url` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `applicable_countries` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'mc',
  `type` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'product',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci