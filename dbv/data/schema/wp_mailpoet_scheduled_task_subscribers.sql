CREATE TABLE `wp_mailpoet_scheduled_task_subscribers` (
  `task_id` int(11) unsigned NOT NULL,
  `subscriber_id` int(11) unsigned NOT NULL,
  `processed` int(1) NOT NULL,
  `failed` smallint(1) NOT NULL DEFAULT '0',
  `error` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_id`,`subscriber_id`),
  KEY `subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci