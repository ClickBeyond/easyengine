# Change Log

This file lists the changes made to the [ClickBeyond fork](https://github.com/ClickBeyond/easyengine) of the [EasyEngine project](https://github.com/rtCamp/easyengine).

## v2.2.3.6 [28-Feb-2015]
- Download and install plugin: 
	- [WP Sync DB](https://github.com/wp-sync-db/wp-sync-db)

## v2.2.3.5 [24-Feb-2015]
- Fix Twenty Thirteen theme not being deleted during installation.

## v2.2.3.4 [12-Feb-2015]
- Delete default themes: `Twenty Fourteen` and `Twenty Thirteen`.
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
	- [WP-Piwik](https://wordpress.org/plugins/wp-piwik/)

## v2.2.3.3 [11-Feb-2015]
- Fixed duplicate swap file error.
- Uninstall default plugins: `Akismet` and `Hello Dolly`.

## v2.2.3.2 [11-Feb-2015]
- Fix missing references to the ClickBeyond repo.
- Automatically create a swap file for all systems with 8192MB of RAM or less. The size of the swap file created is relative to the available RAM, as recommended by [this EasyEngine article](https://rtcamp.com/easyengine/installation/).
- Change the WordPress permalink structure to `/%postname%/` instead of `/%year%/%monthnum%/%day%/%postname%/`.
- Change the WordPress time-zone to Europe/London.
- Change the WordPress time format to HH:MM.

## v2.2.3.1 [08-Feb-2015]
- Forked the project from [rtCamp/easyengine](https://github.com/rtCamp/easyengine) and updated the `install` and `update` scripts to reference this [ClickBeyond repo](https://github.com/ClickBeyond/easyengine).
- Set the default WordPress locale to en_GB.
