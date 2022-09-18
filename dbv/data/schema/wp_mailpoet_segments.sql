CREATE TABLE `wp_mailpoet_segments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(90) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'default',
  `description` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `average_engagement_score` float unsigned DEFAULT NULL,
  `average_engagement_score_updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `average_engagement_score_updated_at` (`average_engagement_score_updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci