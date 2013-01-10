include /usr/local/share/luggage/luggage.make

TITLE=guest_account
REVERSE_DOMAIN=org.da
PAYLOAD=\
		pack-Library-Management-guest_account\
		pack-script-postflight\
		pack-System-Library-User_Template

PACKAGE_VERSION=1.0

management: l_Library
	@sudo mkdir ${WORK_D}/Library/Management
	@sudo chown 0:80 ${WORK_D}/Library/Management
	@sudo chmod 755 ${WORK_D}/Library/Management

pack-Library-Management-guest_account: management
	@sudo ${CP} guest_account ${WORK_D}/Library/Management/
	@sudo chown -R 0:80 ${WORK_D}/Library/Management/guest_account
	@sudo chmod -R 755 ${WORK_D}/Library/Management/guest_account
	
pack-System-Library-User_Template: l_System_Library_User_Template
	@sudo ${CP} -rp user_template/* "${WORK_D}/System/Library/User Template/English.lproj/"
	@sudo chown -R root:wheel "${WORK_D}/System/Library/User Template/English.lproj/"
#	@sudo chmod -R 700 "${WORK_D}/System/Library/User Template/English.lproj/"
#	@sudo chmod -R 755 "${WORK_D}/System/Library/User Template/English.lproj/Public"
#	@sudo chmod -R 755 "${WORK_D}/System/Library/User Template/English.lproj/Public"
