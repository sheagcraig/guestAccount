include /usr/local/share/luggage/luggage.make

TITLE=guest_account
REVERSE_DOMAIN=org.da
PAYLOAD=\
		pack-Library-Management-guest_account\
		pack-script-postinstall\

PACKAGE_VERSION=1.1

management: l_Library
	@sudo mkdir ${WORK_D}/Library/Management
	@sudo chown 0:80 ${WORK_D}/Library/Management
	@sudo chmod 755 ${WORK_D}/Library/Management

pack-Library-Management-guest_account: management
	@sudo ${CP} guest_account ${WORK_D}/Library/Management/
	@sudo chown -R 0:80 ${WORK_D}/Library/Management/guest_account
	@sudo chmod -R 755 ${WORK_D}/Library/Management/guest_account
