CREATE TABLE `wp_mailpoet_newsletter_templates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int(11) DEFAULT '0',
  `name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `categories` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '[]',
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `body` longtext COLLATE utf8mb4_unicode_520_ci,
  `thumbnail` longtext COLLATE utf8mb4_unicode_520_ci,
  `thumbnail_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `readonly` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci