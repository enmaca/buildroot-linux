REPOSITORY_UNDERMEDIA_ADDONS_VERSION:=0.1.1
REPOSITORY_UNDERMEDIA_ADDONS_SOURCE=repository.undermedia.addons-$(REPOSITORY_UNDERMEDIA_ADDONS_VERSION).tar.gz
REPOSITORY_UNDERMEDIA_ADDONS_SITE:=http://undermedia.tv/undermedia-xbmc-addons/repository.undermedia.addons/
REPOSITORY_UNDERMEDIA_ADDONS_INSTALL_TARGET = YES
REPOSITORY_UNDERMEDIA_ADDONS_INSTALL_TARGET = YES
REPOSITORY_UNDERMEDIA_ADDONS_DEPENDENCIES = xbmc

define REPOSITORY_UNDERMEDIA_ADDONS_INSTALL_STAGING_CMDS
	mkdir -p $(STAGING_DIR)/usr/share/xbmc/addons/repository.undermedia.addons
	cp -rf $(@D)/repository.undermedia.addons/* $(STAGING_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
endef

define REPOSITORY_UNDERMEDIA_ADDONS_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/repository.undermedia.addons
	cp -rf $(@D)/repository.undermedia.addons/* $(TARGET_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
endef

$(eval $(call GENTARGETS,package/thirdparty,repository_undermedia_addons))
