CREATE TABLE `wp_mailpoet_stats_notifications` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int(11) unsigned NOT NULL,
  `task_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `newsletter_id_task_id` (`newsletter_id`,`task_id`),
  KEY `task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci