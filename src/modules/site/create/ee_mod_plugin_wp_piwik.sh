# Setup WP-Piwik

function ee_mod_plugin_wp_piwik()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Installing WP-Piwik plugin, please wait..."
	wp plugin --allow-root install wp-piwik &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to install WP-Piwik plugin, exit status = " $?
}
