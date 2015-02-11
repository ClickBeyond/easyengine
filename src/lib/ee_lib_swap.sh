# EasyEngine Swap creation

function ee_lib_swap()
{
	if [ $EE_TOTAL_RAM -le 8192 ]; then
		if [ $EE_TOTAL_SWAP -le $EE_SWAP ];then

			# Use fallocate command to create SWAP
			# Swap Parameters:
			# Size: Controlled by EE_SWAP (Dependant on RAM)
			# Location: /ee-swapfile
			ee_lib_echo "Adding swapfile, please wait..."
			fallocate -l ${EE_SWAP}m /ee-swapfile &>> $EE_COMMAND_LOG \
			|| ee_lib_error "Unable to generate /ee-swapfile, exit status = " $?

			# Lock down access to the swap file
			chmod 600 /ee-swapfile &>> $EE_COMMAND_LOG \
			|| ee_lib_error "Unable to lock down access to swapfile, exit status = " $?

			# Create it as a Swap
			mkswap /ee-swapfile &>> $EE_COMMAND_LOG \
			|| ee_lib_error "Unable to create swapfile, exit status = " $?

			# Enable the Swap
			swapon /ee-swapfile &>> $EE_COMMAND_LOG \
			|| ee_lib_error "Unable to enable Swap, exit status = " $?

			# Add entry into /etc/fstab
			echo "/ee-swapfile		none		swap	sw	0	0" >> /etc/fstab \
			|| ee_lib_error "Unable to add entry into /etc/fstab, exit status = " $?

			# Tweak the swap settings by adding entries into /etc/sysctl.conf
			# Default swappiness = 60
			sysctl vm.swappiness=10 &>> $EE_COMMAND_LOG \
			|| ee_lib_error "Unable to set swappiness, exit status = " $?
			echo "vm.swappiness=10" >> /etc/sysctl.conf \
			|| ee_lib_error "Unable to add entry into /etc/sysctl.conf, exit status = " $?
			# Default cache_pressure = 100
			sysctl vm.vfs_cache_pressure=50 &>> $EE_COMMAND_LOG \
			|| ee_lib_error "Unable to set vfs_cache_pressure, exit status = " $?
			echo "vm.vfs_cache_pressure=50" >> /etc/sysctl.conf \
			|| ee_lib_error "Unable to add entry into /etc/sysctl.conf, exit status = " $?
		fi
	fi
}
