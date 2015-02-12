# Setup Disable Feeds

function ee_mod_plugin_disable_feeds()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Installing Disable Feeds plugin, please wait..."
	wp plugin --allow-root install disable-feeds &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to install Disable Feeds plugin, exit status = " $?

	# Activate Disable Feeds
	wp plugin --allow-root activate disable-feeds $EE_NETWORK_ACTIVATE &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to activate Disable Feeds plugin, exit status = " $?
}
