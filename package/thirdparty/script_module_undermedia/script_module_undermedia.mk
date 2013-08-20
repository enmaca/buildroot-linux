SCRIPT_MODULE_UNDERMEDIA_VERSION:=0.1.2
SCRIPT_MODULE_UNDERMEDIA_SOURCE=script.module.undermedia-$(SCRIPT_MODULE_UNDERMEDIA_VERSION).tar.gz
SCRIPT_MODULE_UNDERMEDIA_SITE:=http://undermedia.tv/undermedia-xbmc-addons/script.module.undermedia/
SCRIPT_MODULE_UNDERMEDIA_INSTALL_TARGET = YES
SCRIPT_MODULE_UNDERMEDIA_INSTALL_TARGET = YES

define SCRIPT_MODULE_UNDERMEDIA_INSTALL_STAGING_CMDS
	mkdir -p $(STAGING_DIR)/usr/share/xbmc/addons/script.module.undermedia/lib/undermedia
	mkdir -p $(STAGING_DIR)/usr/share/xbmc/addons/script.module.undermedia/resources
	cp -rf $(@D)/addon.xml $(STAGING_DIR)/usr/share/xbmc/addons/script.module.undermedia/
	cp -rf $(@D)/changelog.txt $(STAGING_DIR)/usr/share/xbmc/addons/script.module.undermedia/
	cp -rf $(@D)/README $(STAGING_DIR)/usr/share/xbmc/addons/script.module.undermedia/
	cp -rf $(@D)/lib/undermedia/__init__.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.undermedia/lib/undermedia/
	cp -rf $(@D)/lib/undermedia/api.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.undermedia/lib/undermedia/
	cp -rf $(@D)/lib/undermedia/utils.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.undermedia/lib/undermedia/
	cp -rf $(@D)/resources/settings.xml $(STAGING_DIR)/usr/share/xbmc/addons/script.module.undermedia/resources/
endef

define SCRIPT_MODULE_UNDERMEDIA_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/script.module.undermedia/lib/undermedia
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/script.module.undermedia/resources
	cp -rf $(@D)/addon.xml $(TARGET_DIR)/usr/share/xbmc/addons/script.module.undermedia/
	cp -rf $(@D)/changelog.txt $(TARGET_DIR)/usr/share/xbmc/addons/script.module.undermedia/
	cp -rf $(@D)/README $(TARGET_DIR)/usr/share/xbmc/addons/script.module.undermedia/
	cp -rf $(@D)/lib/undermedia/__init__.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.undermedia/lib/undermedia/
	cp -rf $(@D)/lib/undermedia/api.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.undermedia/lib/undermedia/
	cp -rf $(@D)/lib/undermedia/utils.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.undermedia/lib/undermedia/
	cp -rf $(@D)/resources/settings.xml $(TARGET_DIR)/usr/share/xbmc/addons/script.module.undermedia/resources/
endef

$(eval $(call GENTARGETS,package/thirdparty,script_module_undermedia))
