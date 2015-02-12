# Setup BackWPup

function ee_mod_plugin_backwpup()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Installing BackWPup plugin, please wait..."
	wp plugin --allow-root install backwpup &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to install BackWPup plugin, exit status = " $?
}
