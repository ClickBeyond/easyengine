# Setup WordPress SEO by Yoast

function ee_mod_plugin_wordpress_seo()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Installing WordPress SEO by Yoast plugin, please wait..."
	wp plugin --allow-root install wordpress-seo &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to install WordPress SEO by Yoast plugin, exit status = " $?
}
