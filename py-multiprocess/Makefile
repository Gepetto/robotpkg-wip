# robotpkg Makefile for:	wip/py-multiprocess
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

ORG=			uqfoundation
NAME=			multiprocess
DISTNAME=		${NAME}-0.70.14
PKGNAME=		${PKGTAG.python-}${DISTNAME}
MASTER_SITES=		${MASTER_SITE_GITHUB:=${ORG}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git
GITHUB_RELEASE=		${DISTNAME}

CATEGORIES=		wip
HOMEPAGE=		${MASTER_SITE_GITHUB:=${ORG}/${NAME}}
COMMENT=		better multiprocessing and multithreading in python
LICENSE=		modified-bsd
MAINTAINER=		gsaurel@laas.fr

include ../../wip/py-dill/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-numpy.mk
include ../../mk/sysdep/py-scipy.mk
include ../../mk/sysdep/py-setuptools.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
