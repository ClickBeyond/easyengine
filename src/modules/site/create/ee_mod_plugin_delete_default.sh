# Delete default plugins Akismet and Hello Dolly

function ee_mod_plugin_delete_default()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Deleting default plugins, please wait..."
	# Delete Akismet
	wp plugin --allow-root delete akismet &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to delete Akismet plugin, exit status = " $?

	# Delete Hello Dolly
	wp plugin --allow-root delete hello &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to delete Hello Dolly plugin, exit status = " $?
}
