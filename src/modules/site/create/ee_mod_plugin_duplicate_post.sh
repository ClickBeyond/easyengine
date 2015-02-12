# Setup Duplicate Post

function ee_mod_plugin_duplicate_post()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Installing Duplicate Post plugin, please wait..."
	wp plugin --allow-root install duplicate-post &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to install Duplicate Post plugin, exit status = " $?

	# Activate Duplicate Post
	wp plugin --allow-root activate duplicate-post $EE_NETWORK_ACTIVATE &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to activate Duplicate Post plugin, exit status = " $?
}
