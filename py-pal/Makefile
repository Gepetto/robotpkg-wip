# robotpkg Makefile for:	py-pal
# Created:			Olivier Stasse on Tue, 8 May 2018
#

VERSION=	0.9.14os1
PKGBASE=	pal-python
DISTNAME=	${VERSION}
PKGNAME=	${PKGBASE}-${VERSION}
ROSNAME=	$(subst -,_,${PKGBASE})
WRKSRC=		${WRKDIR}/${ROSNAME}-${VERSION}
DIST_SUBDIR=	${PKGBASE}

CATEGORIES=	wip
HOMEPAGE=	${MASTER_SITE_GITHUB:=olivier-stasse/${ROSNAME}}
MASTER_SITES=	${HOMEPAGE}/archive/
COMMENT=	PAL python utils
LICENSE=	2-clause-bsd

PYDISTUTILSPKG=	yes

# FIXME warning does not seems to prevent installing
# libyaml is not found or a compiler error: forcing --without-libyaml
# (if libyaml is installed correctly, you may need to
# specify the option --include-dirs or uncomment and
# modify the parameter include_dirs in setup.cfg)

include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
