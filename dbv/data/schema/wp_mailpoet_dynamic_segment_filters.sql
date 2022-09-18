CREATE TABLE `wp_mailpoet_dynamic_segment_filters` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `segment_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `filter_data` longblob,
  `filter_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `segment_id` (`segment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci