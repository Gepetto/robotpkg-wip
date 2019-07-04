# robotpkg Makefile for:	wip/py-quadprog
# Created:			Guilhem Saurel on Thu, 04 Jul 2019
#

ORG=			rmcgibbo
NAME=			quadprog
VERSION=		0.1.6

DISTNAME=		${NAME}-${VERSION}
PKGNAME=		${PKGTAG.python-}quadprog-${VERSION}

PYPI_PATH=		24/fb/816f87f1b9648231b51012758b1d8fa3043ee1a428e3dbb64c6e6a42b6b9/

CATEGORIES=		wip
MASTER_SITES=		https://files.pythonhosted.org/packages/${PYPI_PATH}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
COMMENT=		Solve a strictly convex quadratic program
LICENSE=		gnu-gpl-v2
MAINTAINER=		gsaurel@laas.fr

include ../../wip/mk/sysdep/py-cython.mk
include ../../wip/mk/sysdep/py-pip.mk

include ../../mk/sysdep/py-numpy.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
