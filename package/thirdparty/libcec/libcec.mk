#############################################################
#
# libcec
#
#############################################################
LIBCEC_VERSION = 54be21e43ea5b0268858e09f0252bb3909ef6132
LIBCEC_SITE = git://github.com/Pulse-Eight/libcec.git
LIBCEC_INSTALL_STAGING = YES
LIBCEC_INSTALL_TARGET = YES
LIBCEC_AUTORECONF = YES
LIBCEC_DEPENDENCIES += udev
LIBCEC_MAKE=$(MAKE1)

$(eval $(call AUTOTARGETS,package/thirdparty,libcec))
