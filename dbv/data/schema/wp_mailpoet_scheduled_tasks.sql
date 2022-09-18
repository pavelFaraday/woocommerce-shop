CREATE TABLE `wp_mailpoet_scheduled_tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(90) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` varchar(12) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `priority` mediumint(9) NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `in_progress` int(1) DEFAULT NULL,
  `reschedule_count` int(11) NOT NULL DEFAULT '0',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci