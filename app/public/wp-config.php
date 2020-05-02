<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
if (file_exists(dirname(__FILE__) . '/local.php')) {

// Local Database settings
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

} else {

//Live Database settings
/** The name of the database for WordPress */
define( 'DB_NAME', 'caras939_universitydata' );

/** MySQL database username */
define( 'DB_USER', 'caras939_cara' );

/** MySQL database password */
define( 'DB_PASSWORD', 'SG-1Tatertot!' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

}



/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'fnEKQamcpOyTC+c+k4besb+ghPvpmOguv50QuAZXlHmiFmoxoJ614LXvAC49HuvdtqwQJx53BtChhC0oKDgK6w==');
define('SECURE_AUTH_KEY',  'bAXRBEQz6WnhfdYeF3UGYdt16KyHJPV/1IwrSVN1Ne3z7hsVl1PgKn8Ku374wRVplMfd39jJ/Qn/EAAuacd3WA==');
define('LOGGED_IN_KEY',    'Zzuvq1NYVDRy/bPIkXFZkfgMtt5yDsIxsKdY0vUBm/RFVBPDR9pRtq1GF/tHjH+rq4B9XjvzkDGadKfwubzsTw==');
define('NONCE_KEY',        '9krYtGsNtkRlwBDHlEBKIWs4garmrl0nRyzuO2KOnQWhIooovThIyUZsX6HUIuUr8J9X3gNXbmAArVk2YZkQsQ==');
define('AUTH_SALT',        'E4HdwSDXZoqlNL7Rp7vDw0ibTdiZPuMPUA3ygjDmwUba1Chnnk/HToMulpLt/GKsms1yx2Rjv9pS4ykdYe0FFg==');
define('SECURE_AUTH_SALT', 'A+NR5nL5MhTYMO9cH47zzA57wnMC4WPzAG3GGAul0nLXQtVLu5uobHIGV/jJ/CjT1xjcaUDF8j4WtJBs9um/iA==');
define('LOGGED_IN_SALT',   'd8HxK/LMc8EtbzDHeeByTbTlx0qX80GsewJ25LdVQwXAX/xvRHvrnFBW1h7vXasDrN0BGLD9wGDvTvTn3b/IOA==');
define('NONCE_SALT',       '8YckJ0bdFWPRRy+rLpY9u7xok0I8jrOeVWWMlDe7hLkGKNX6dffT0OyoYWhxsj9qSRYCGkSBpw3SPJuvU+V1jg==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
