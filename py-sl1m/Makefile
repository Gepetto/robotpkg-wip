# robotpkg Makefile for:	wip/py38-sl1m
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

ORG=			loco-3d
NAME=			sl1m
VERSION=		0.1.1

PKGNAME=		${PKGTAG.python-}${DISTNAME}

CATEGORIES=		wip
COMMENT=		Implementation of the sl1m solver for multi contact planning
LICENSE=		2-clause-bsd
MAINTAINER=		gsaurel@laas.fr

PYTHON_SELF_CONFLICT=	yes

include ../../devel/jrl-cmakemodules/Makefile.common
include ../../wip/py-pycddlib/depend.mk
include ../../math/py-quadprog/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
