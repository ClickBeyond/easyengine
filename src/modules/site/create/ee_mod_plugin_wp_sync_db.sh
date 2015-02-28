# Setup WP Sync DB

function ee_mod_plugin_wp_sync_db()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Installing WP Sync DB plugin, please wait..."
	wp plugin --allow-root install https://github.com/wp-sync-db/wp-sync-db/archive/master.zip &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to install WP Sync DB plugin, exit status = " $?
}
