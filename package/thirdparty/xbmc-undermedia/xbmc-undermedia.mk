XBMC_UNDERMEDIA_VERSION:=0.1.1
XBMC_UNDERMEDIA_SOURCE=recovery_reboot-$(XBMC_UNDERMEDIA_VERSION).tar.gz
XBMC_UNDERMEDIA_SITE=./package/thirdparty/xbmc-undermedia/src
XBMC_UNDERMEDIA_SITE_METHOD=cp
XBMC_UNDERMEDIA_INSTALL_TARGET = YES
XBMC_UNDERMEDIA_INSTALL_TARGET = YES
XBMC_UNDERMEDIA_DEPENDENCIES = xbmc

define XBMC_UNDERMEDIA_INSTALL_STAGING_CMDS
	mkdir -p $(STAGING_DIR)/usr/share/xbmc/addons/repository.undermedia.addons
	cp -rf $(@D)/repository.undermedia.addons/* $(STAGING_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
endef

define XBMC_UNDERMEDIA_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/repository.undermedia.addons
	cp -rf $(@D)/repository.undermedia.addons/* $(TARGET_DIR)/usr/share/xbmc/addons/repository.undermedia.addons/
endef

$(eval $(call GENTARGETS,package/thirdparty,xbmc-undermedia))
