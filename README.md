virtualbox-initscripts
======================

simple init.d control of headless virtualbox vms

This repo is just for a simple init script for starting VirtualBox
virtual machines automatically on machine startup. It is dependent on
a standard Debian boot system.

Installing
----------

To install, as root or with sudo, do:

    make install

This will copy the init.d script, a basic default file, touch the file
used to store the names of VMs to boot, and runs update-rc.d to enable
automatic starting at boot.

Configuring
-----------

There are only a couple of things to do to configure for your
environment. First, list the *names* of the machines, one per line,
you want to start in /etc/virtualbox/machines_enabled. These names are
the quoted names that result from running:

    vboxmanage list vms

If the VMs are not owned by root, then change the VM_USER variable in
/etc/default/virtualbox-vms to match the name of the user who does own
the VMs. There is no support, and probably will never be (by me anyway,
patches welcome) for multiple users as VM owners.

Usage
-----

The usage follows standard Debian init script usage:

    /etc/init.d/virtualbox-vms {start|stop}

This is handled automatically at boot and shutdown by the boot system.

