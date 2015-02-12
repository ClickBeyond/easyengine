# Setup Schema Creator by Raven

function ee_mod_plugin_schema_creator()
{
	cd /var/www/$EE_DOMAIN/htdocs/
	ee_lib_echo "Installing Schema Creator by Raven plugin, please wait..."
	wp plugin --allow-root install schema-creator &>> $EE_COMMAND_LOG \
	|| ee_lib_error "Unable to install Schema Creator by Raven plugin, exit status = " $?
}
