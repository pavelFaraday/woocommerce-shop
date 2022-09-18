CREATE TABLE `wp_mailpoet_statistics_unsubscribes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int(11) unsigned DEFAULT NULL,
  `subscriber_id` int(11) unsigned NOT NULL,
  `queue_id` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT 'unknown',
  `meta` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `newsletter_id_subscriber_id` (`newsletter_id`,`subscriber_id`),
  KEY `queue_id` (`queue_id`),
  KEY `subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci