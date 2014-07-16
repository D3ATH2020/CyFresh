ARCHS = armv7 armv7s arm64

TARGET = iphone:clang:latest:5.0

THEOS_BUILD_DIR = Packages

include theos/makefiles/common.mk

BUNDLE_NAME = CyFreshInfo
CyFreshInfo_CFLAGS = -fno-objc-arc
CyFreshInfo_FILES = CyFreshInfoListController.m
CyFreshInfo_INSTALL_PATH = /Library/PreferenceBundles
CyFreshInfo_FRAMEWORKS = Foundation UIKit
CyFreshInfo_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/CyFreshInfo.plist$(ECHO_END)
