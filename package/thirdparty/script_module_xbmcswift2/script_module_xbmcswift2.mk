SCRIPT_MODULE_XBMCSWIFT2_VERSION:=2.4.0
SCRIPT_MODULE_XBMCSWIFT2_SOURCE=script.module.xbmcswift2-$(SCRIPT_MODULE_XBMCSWIFT2_VERSION).tar.gz
SCRIPT_MODULE_XBMCSWIFT2_SITE:=http://undermedia.tv/undermedia-xbmc-addons/script.module.xbmcswift2/
SCRIPT_MODULE_XBMCSWIFT2_INSTALL_TARGET = YES
SCRIPT_MODULE_XBMCSWIFT2_INSTALL_TARGET = YES

define SCRIPT_MODULE_XBMCSWIFT2_INSTALL_STAGING_CMDS
	mkdir -p $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/ext
	cp -rf $(@D)/addon.xml $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/
	cp -rf $(@D)/changelog.txt $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/
	cp -rf $(@D)/README $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/
	cp -rf $(@D)/xbmcswift2_version $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/__init__.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/actions.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/common.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/constants.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/ext/__init__.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/ext/
	cp -rf $(@D)/lib/xbmcswift2/ext/playlist.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/ext/
	cp -rf $(@D)/lib/xbmcswift2/listitem.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/logger.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/module.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/plugin.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/request.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/storage.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/urls.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/xbmcmixin.py $(STAGING_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
endef

define SCRIPT_MODULE_XBMCSWIFT2_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/ext
	cp -rf $(@D)/addon.xml $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/
	cp -rf $(@D)/changelog.txt $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/
	cp -rf $(@D)/README $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/
	cp -rf $(@D)/xbmcswift2_version $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/__init__.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/actions.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/common.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/constants.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/ext/__init__.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/ext/
	cp -rf $(@D)/lib/xbmcswift2/ext/playlist.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/ext/
	cp -rf $(@D)/lib/xbmcswift2/listitem.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/logger.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/module.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/plugin.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/request.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/storage.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/urls.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
	cp -rf $(@D)/lib/xbmcswift2/xbmcmixin.py $(TARGET_DIR)/usr/share/xbmc/addons/script.module.xbmcswift2/lib/xbmcswift2/
endef

$(eval $(call GENTARGETS,package/thirdparty,script_module_xbmcswift2))
