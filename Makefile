include theos/makefiles/common.mk

APPLICATION_NAME = CyFresh
CyFresh_FILES = main.m CyFreshApplication.mm RootViewController.mm
CyFresh_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk
