CREATE TABLE `wp_mailpoet_sending_queues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int(11) unsigned NOT NULL,
  `newsletter_id` int(11) unsigned NOT NULL,
  `newsletter_rendered_body` longtext COLLATE utf8mb4_unicode_520_ci,
  `newsletter_rendered_subject` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `subscribers` longtext COLLATE utf8mb4_unicode_520_ci,
  `count_total` int(11) unsigned NOT NULL DEFAULT '0',
  `count_processed` int(11) unsigned NOT NULL DEFAULT '0',
  `count_to_process` int(11) unsigned NOT NULL DEFAULT '0',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `newsletter_id` (`newsletter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci