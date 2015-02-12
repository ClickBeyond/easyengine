# Setup Pretty Link Lite

function ee_mod_plugin_pretty_link()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Installing Pretty Link Lite plugin, please wait..."
	wp plugin --allow-root install pretty-link &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to install Pretty Link Lite plugin, exit status = " $?
}
