ROOT_INSTALL=install -o root -g root

install:
	$(ROOT_INSTALL) -m 0775 etc/init.d/virtualbox-vms /etc/init.d/
	$(ROOT_INSTALL) -m 0644 etc/default/virtualbox-vms /etc/default/
	touch /etc/virtualbox/machines_enabled
	update-rc.d virtualbox-vms defaults
