# robotpkg Makefile for:	py-pal
# Created:			Olivier Stasse on Tue, 8 May 2018
#

ORG=			olivier-stasse
NAME=			pal-python
VERSION=		0.9.14os1

ROSNAME=		$(subst -,_,${NAME})

PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
WRKSRC=			${WRKDIR}/${ROSNAME}-${VERSION}
DISTNAME=		${VERSION}
DIST_SUBDIR=		${NAME}

# old package name and other Python versions
CONFLICTS+=		${NAME}-[0-9]*
CONFLICTS+=		py[0-9][0-9]-${NAME}-[0-9]*

CATEGORIES=		wip

MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}${ORG}/${NAME}.git

COMMENT=		PAL python utils
LICENSE=		2-clause-bsd

PYDISTUTILSPKG=		yes

# FIXME warning does not seems to prevent installing
# libyaml is not found or a compiler error: forcing --without-libyaml
# (if libyaml is installed correctly, you may need to
# specify the option --include-dirs or uncomment and
# modify the parameter include_dirs in setup.cfg)

include ../../sysutils/py-catkin-pkg/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
