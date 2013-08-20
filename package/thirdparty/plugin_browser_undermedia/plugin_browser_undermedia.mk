PLUGIN_BROWSER_UNDERMEDIA_VERSION:=0.1.2
PLUGIN_BROWSER_UNDERMEDIA_SOURCE=plugin.browser.undermedia-$(PLUGIN_BROWSER_UNDERMEDIA_VERSION).tar.gz
PLUGIN_BROWSER_UNDERMEDIA_SITE:=http://undermedia.tv/undermedia-xbmc-addons/plugin.browser.undermedia/
PLUGIN_BROWSER_UNDERMEDIA_INSTALL_TARGET = YES
PLUGIN_BROWSER_UNDERMEDIA_INSTALL_TARGET = YES

define PLUGIN_BROWSER_UNDERMEDIA_INSTALL_STAGING_CMDS
	mkdir -p $(STAGING_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/resources
	cp -rf $(@D)/addon.xml $(STAGING_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
	cp -rf $(@D)/changelog.txt $(STAGING_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
	cp -rf $(@D)/icon.png $(STAGING_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
	cp -rf $(@D)/LICENSE.txt $(STAGING_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
	
	cp -rf $(@D)/default.py  $(STAGING_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
	cp -rf $(@D)/resources/settings.xml  $(STAGING_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/resources/
	cp -rf $(@D)/version  $(STAGING_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
endef

define PLUGIN_BROWSER_UNDERMEDIA_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/resources
	cp -rf $(@D)/addon.xml $(TARGET_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
	cp -rf $(@D)/changelog.txt $(TARGET_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
	cp -rf $(@D)/icon.png $(TARGET_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
	cp -rf $(@D)/LICENSE.txt $(TARGET_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
	cp -rf $(@D)/default.py  $(TARGET_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
	cp -rf $(@D)/resources/settings.xml  $(TARGET_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/resources/
	cp -rf $(@D)/version  $(TARGET_DIR)/usr/share/xbmc/addons/plugin.browser.undermedia/
endef

$(eval $(call GENTARGETS,package/thirdparty,plugin_browser_undermedia))
