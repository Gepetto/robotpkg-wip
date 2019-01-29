# robotpkg Makefile for:	wip/hpp-rbprm-robot-data-private
# Created:			Guilhem Saurel on Tue, 29 Jan 2019
#

HPP_PACKAGE=	hpp-rbprm-robot-data-private
HPP_COMMENT=	file database with private models

CATEGORIES=	wip

DEPEND_ABI.python+=	python<3

CONFLICTS+=		hpp-rbprm-robot-data

RESTRICTED=	Redistribution robot data is not permitted
NO_PUBLIC_SRC=	${RESTRICTED}
NO_PUBLIC_BIN=	${RESTRICTED}

include ../../meta-pkgs/hpp/Makefile.common

include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
