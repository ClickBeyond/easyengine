# Install and configure extra plugins

function ee_mod_plugin_custom_install()
{
	ee_lib_echo "Installing custom plugins, please wait..."
	ee_mod_plugin_backwpup
	ee_mod_plugin_cloudflare
	ee_mod_plugin_disable_feeds
	ee_mod_plugin_duplicate_post
	ee_mod_plugin_adsense_now_lite
	ee_mod_plugin_pretty_link
	ee_mod_plugin_schema_creator
	ee_mod_plugin_wordpress_importer
	ee_mod_plugin_wordpress_seo
	ee_mod_plugin_wp_piwik
}
