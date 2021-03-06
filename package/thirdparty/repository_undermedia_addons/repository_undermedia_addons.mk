REPOSITORY_UNDERMEDIA_ADDONS_VERSION:=0.1.2
REPOSITORY_UNDERMEDIA_ADDONS_SOURCE=repository.undermedia.addons-$(REPOSITORY_UNDERMEDIA_ADDONS_VERSION).tar.gz
REPOSITORY_UNDERMEDIA_ADDONS_SITE:=http://undermedia.tv/undermedia-xbmc-addons/repository.undermedia.addons/
REPOSITORY_UNDERMEDIA_ADDONS_INSTALL_TARGET = YES
REPOSITORY_UNDERMEDIA_ADDONS_INSTALL_TARGET = YES

define REPOSITORY_UNDERMEDIA_ADDONS_INSTALL_STAGING_CMDS
	mkdir -p $(STAGING_DIR)/usr/share/xbmc/addons/repository.undermedia.addons
	cp -rf $(@D)/addon.xml $(STAGING_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
	cp -rf $(@D)/changelog.txt $(STAGING_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
	cp -rf $(@D)/icon.png $(STAGING_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
	cp -rf $(@D)/LICENSE.txt $(STAGING_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
endef

define REPOSITORY_UNDERMEDIA_ADDONS_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/repository.undermedia.addons
	cp -rf $(@D)/addon.xml $(TARGET_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
	cp -rf $(@D)/changelog.txt $(TARGET_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
	cp -rf $(@D)/icon.png $(TARGET_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
	cp -rf $(@D)/LICENSE.txt $(TARGET_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
endef

$(eval $(call GENTARGETS,package/thirdparty,repository_undermedia_addons))
