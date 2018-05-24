# robotpkg wip/sysdep/json-c.mk
# Created:			Guilhem Saurel on Thu, 24 May 2018
#
DEPEND_DEPTH:=	${DEPEND_DEPTH}+
LIBJSONC_DEPEND_MK:=	${LIBJSONC_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=	libjson-c
endif

ifeq (+,$(LIBJSONC_DEPEND_MK)) # ------------------------------------------------

PREFER.libjson-c?=	system
DEPEND_USE+=	libjson-c
DEPEND_ABI.libjson-c?=libjson-c>=0.10

SYSTEM_SEARCH.libjson-c=	\
	'bin/git:s/[^0-9.]//gp:% --version'

ifdef PREFIX.git
  export GIT=	${PREFIX.git}/bin/git
endif

endif # LIBJSONC_DEPEND_MK ------------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
