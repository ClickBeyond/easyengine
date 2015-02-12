# Setup Now! plugin for AdSense

function ee_mod_plugin_adsense_now_lite()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Installing Now! plugin for AdSense, please wait..."
	wp plugin --allow-root install adsense-now-lite &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to install Now! plugin for AdSense, exit status = " $?
}
