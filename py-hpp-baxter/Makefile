# robotpkg Makefile for:	wip/py-hpp-baxter
# Created:			Guilhem Saurel on Mon, 28 Jan 2019
#

PKGREVISION=		1
HPP_PACKAGE=		hpp-baxter
HPP_COMMENT=		Wrappers for Baxter robot in HPP

ROSNAME=		$(subst -,_,${HPP_PACKAGE})

CATEGORIES=		wip

DYNAMIC_PLIST_DIRS+=	share/doc/${ROSNAME}

PYTHON_NOTAG_CONFLICT=	yes

include ../../meta-pkgs/hpp/Makefile.common

include ../../mk/language/c.mk
include ../../mk/language/c++11.mk
include ../../mk/robotpkg.mk
