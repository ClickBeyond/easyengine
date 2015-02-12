# Setup WordPress Importer

function ee_mod_plugin_wordpress_importer()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Installing WordPress Importer plugin, please wait..."
	wp plugin --allow-root install wordpress-importer &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to install WordPress Importer plugin, exit status = " $?
}
