# Updates and Changes

This file documents the modifications made to the [EasyEngine Github project](https://github.com/rtCamp/easyengine).

## WordPress

### ee_mod_setup_wordpress.sh
- Download and install the `en_GB` version of WordPress from [en-gb.WordPress.org](http://en-gb.wordpress.org/).
- Set the WordPress permalink structure to `/%postname%/` instead of `/%year%/%monthnum%/%day%/%postname%/`.
- Change the WordPress time-zone to Europe/London.
- Change the WordPress time format to HH:MM.

### ee_mod_plugin_uninstall_default.sh
- Uninstall default plugins: `Akismet` and `Hello Dolly`.

### ee_mod_theme_delete_default.sh
- Delete default themes: `Twenty Fourteen` and `Twenty Thirteen`.

### ee_mod_plugin_custom_install.sh
- Download and install plugins: 
	- [BackWPup](https://wordpress.org/plugins/backwpup/)
	- [CloudFlare](https://wordpress.org/plugins/cloudflare/)
	- [Disable Feeds](https://wordpress.org/plugins/disable-feeds/)
	- [Duplicate Post](https://wordpress.org/plugins/duplicate-post/)
	- [Now! plugin for AdSense](https://wordpress.org/plugins/adsense-now-lite/)
	- [Pretty Link Lite](https://wordpress.org/plugins/pretty-link/)
	- [Schema Creator by Raven](https://wordpress.org/plugins/schema-creator/)
	- [WordPress Importer](https://wordpress.org/plugins/wordpress-importer/)
	- [WordPress SEO by Yoast](https://wordpress.org/plugins/wordpress-seo/)
	- [WP Sync DB](https://github.com/wp-sync-db/wp-sync-db)
	- [WP-Piwik](https://wordpress.org/plugins/wp-piwik/)

## Swap File

- By default EasyEngine would only create a swap file if the system had 512MB of RAM or less. This has been changed so that a swap file is always created when the system RAM is 8192MB or less. The size of the swap file created is relative to the available RAM, as recommended by [this EasyEngine article](https://rtcamp.com/easyengine/installation/).

