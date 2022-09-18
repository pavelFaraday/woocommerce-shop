CREATE TABLE `wp_e_submissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `hash_id` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `main_meta_id` bigint(20) unsigned NOT NULL COMMENT 'Id of main field. to represent the main meta field',
  `post_id` bigint(20) unsigned NOT NULL,
  `referer` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `referer_title` varchar(300) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `element_id` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form_name` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `campaign_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip` varchar(46) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `actions_count` int(11) DEFAULT '0',
  `actions_succeeded_count` int(11) DEFAULT '0',
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `meta` text COLLATE utf8mb4_unicode_520_ci,
  `created_at_gmt` datetime NOT NULL,
  `updated_at_gmt` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash_id_unique_index` (`hash_id`),
  KEY `main_meta_id_index` (`main_meta_id`),
  KEY `hash_id_index` (`hash_id`),
  KEY `type_index` (`type`),
  KEY `post_id_index` (`post_id`),
  KEY `element_id_index` (`element_id`),
  KEY `campaign_id_index` (`campaign_id`),
  KEY `user_id_index` (`user_id`),
  KEY `user_ip_index` (`user_ip`),
  KEY `status_index` (`status`),
  KEY `is_read_index` (`is_read`),
  KEY `created_at_gmt_index` (`created_at_gmt`),
  KEY `updated_at_gmt_index` (`updated_at_gmt`),
  KEY `created_at_index` (`created_at`),
  KEY `updated_at_index` (`updated_at`),
  KEY `referer_index` (`referer`(191)),
  KEY `referer_title_index` (`referer_title`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci