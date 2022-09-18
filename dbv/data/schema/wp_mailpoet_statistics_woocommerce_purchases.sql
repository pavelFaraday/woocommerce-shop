CREATE TABLE `wp_mailpoet_statistics_woocommerce_purchases` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_id` int(11) unsigned NOT NULL,
  `subscriber_id` int(11) unsigned NOT NULL,
  `queue_id` int(11) unsigned NOT NULL,
  `click_id` int(11) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `order_currency` char(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_price_total` float NOT NULL COMMENT 'With shipping and taxes in order_currency',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `click_id_order_id` (`click_id`,`order_id`),
  KEY `newsletter_id` (`newsletter_id`),
  KEY `queue_id` (`queue_id`),
  KEY `subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci