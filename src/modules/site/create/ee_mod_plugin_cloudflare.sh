# Setup CloudFlare

function ee_mod_plugin_cloudflare()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Installing CloudFlare plugin, please wait..."
	wp plugin --allow-root install cloudflare &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to install CloudFlare plugin, exit status = " $?
}
