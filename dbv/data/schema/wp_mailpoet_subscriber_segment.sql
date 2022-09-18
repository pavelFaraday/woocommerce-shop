CREATE TABLE `wp_mailpoet_subscriber_segment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subscriber_id` int(11) unsigned NOT NULL,
  `segment_id` int(11) unsigned NOT NULL,
  `status` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscriber_segment` (`subscriber_id`,`segment_id`),
  KEY `segment_id` (`segment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci