# robotpkg Makefile for:	math/sympy
# Created:			Guilhem Saurel on Thu, 11 Aug 2022
#

DISTNAME=	sympy-1.10.1
PKGNAME=	${PKGTAG.python-}${DISTNAME}

MASTER_SITES=	${MASTER_SITE_GITHUB:=sympy/}
GITHUB_RELEASE=	${DISTNAME}

CATEGORIES=	math
COMMENT=	A computer algebra system written in pure Python
LICENSE=	original-bsd
MAINTAINER=	gsaurel@laas.fr

DEPEND_ABI.python+=	python>3.7

include ../../mk/sysdep/py-setuptools.mk
include ../../mk/robotpkg.mk
