CREATE TABLE `wp_e_submissions_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `key` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `submission_id_index` (`submission_id`),
  KEY `key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci