<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('WP_CACHE', true);
define( 'WPCACHEHOME', '/Applications/MAMP/htdocs/baraqa/wp-content/plugins/wp-super-cache/' );
define( 'DB_NAME', 'baraqa' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'FFoWj#2_1?C*wlNXA|Vxb_`COi9+/B7tkox_-{d*R>^2<@2<{|,D>?::t@N]GjZ@' );
define( 'SECURE_AUTH_KEY',  'Zdy`uOiXO~ZrIUF.PZQ:i7z_)I]w/;DuOrF8v.cZ*B`TC/+~);n./<|zrqy`>_s1' );
define( 'LOGGED_IN_KEY',    '/#P)yI-El=A/FKr&I&Z4sM;K{p#YexbSR.plMT(l 1gXZ{1V]Vz!dQ=2y:V&L4H0' );
define( 'NONCE_KEY',        'qh[6bz?{ xhB3%D=E98MyWdQNHmmF)As$dpR=:lOelGw?ji}Ws05@grj0{I[X&@>' );
define( 'AUTH_SALT',        '4nf8al:qXVGpGAF2iqCB^u=c2KZt~xCb[#NKO6:|~:*~[r~bOH8SY>=)hi4BtXrL' );
define( 'SECURE_AUTH_SALT', ')DBOC5&v%c-~d!Kie;PL`M#G{TZ#Vva-?m F&3~sIg;7$a6i/^t;c9iU(e~{$_i7' );
define( 'LOGGED_IN_SALT',   'p  T=j[e,TZF7PVrV6~m|;o=.b|2ZXxSSv:1Im#Fx]t/Ar]O6`gFWdrRLm@G@}pY' );
define( 'NONCE_SALT',       'o.EdA<h(Jy:+0@A?Z]oW{#9=B` 0*KwJUlZ}.8*5X-NeE6~9aNJFgs2)~Tt^NR0J' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
