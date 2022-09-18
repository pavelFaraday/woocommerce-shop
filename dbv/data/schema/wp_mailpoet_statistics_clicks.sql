CREATE TABLE `wp_mailpoet_statistics_clicks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int(11) unsigned NOT NULL,
  `subscriber_id` int(11) unsigned NOT NULL,
  `queue_id` int(11) unsigned NOT NULL,
  `link_id` int(11) unsigned NOT NULL,
  `user_agent_id` int(11) unsigned DEFAULT NULL,
  `user_agent_type` tinyint(1) NOT NULL DEFAULT '0',
  `count` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `newsletter_id_subscriber_id_user_agent_type` (`newsletter_id`,`subscriber_id`,`user_agent_type`),
  KEY `queue_id` (`queue_id`),
  KEY `subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci