CREATE TABLE `wp_gla_budget_recommendations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `currency` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `daily_budget_low` int(11) NOT NULL,
  `daily_budget_high` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_currency` (`country`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci