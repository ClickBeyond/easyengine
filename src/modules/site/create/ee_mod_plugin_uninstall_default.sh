# Uninstall default plugins: Akismet and Hello Dolly

function ee_mod_plugin_uninstall_default()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Uninstalling default plugins, please wait..."
	# Uninstall Akismet
	wp plugin --allow-root uninstall akismet &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to uninstall Akismet plugin, exit status = " $?
	
	# Uninstall Hello Dolly
	wp plugin --allow-root uninstall hello &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to uninstall Hello Dolly plugin, exit status = " $?
}
