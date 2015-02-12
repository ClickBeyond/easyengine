# Delete default themes: Twenty Fourteen and Twenty Thirteen

function ee_mod_theme_delete_default()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Deleting default theme, please wait..."
	# Delete Twenty Fourteen
	wp theme --allow-root delete twentyfourteen &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to delete Twenty Fourteen theme, exit status = " $?
	
	# Delete Twenty Thirteen
	wp plugin --allow-root delete twentythirteen &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to delete Twenty Thirteen plugin, exit status = " $?
}
