
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
AUTOCONF_ARCHIVE_DEPEND_MK:=		${AUTOCONF_ARCHIVE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		autoconf-archive
endif

ifeq (+,$(AUTOCONF_ARCHIVE_DEPEND_MK)) # ---------------------------------------------

PREFER.autoconf-archive?=		system
DEPEND_USE+=		autoconf-archive
DEPEND_ABI.autoconf-archive?=	autoconf-archive>=20150925

SYSTEM_SEARCH.autoconf-archive=	\
	'share/doc/autoconf-archive/' \

SYSTEM_PKG.Ubuntu.autoconf-archive=autoconf-archive
SYSTEM_PKG.Debian.autoconf-archive=autoconf-archive

endif # AUTOCONF_ARCHIVE_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
