# robotpkg Makefile for:	wip/hhsimulator
# Created:			François Magimel on Thur, 16 Jul 2015

VERSION=		0.7
DISTNAME=		hhsimulator-${VERSION}
MASTER_SITES=		https://redmine.laas.fr/attachments/download/149/
MASTER_REPOSITORY=	git git://redmine.laas.fr/laas/users/simon/hyperholo/hhsimulateur.git

CATEGORIES=		image simulation
MAINTAINER=		openrobots@laas.fr
HOMEPAGE=		https://redmine.laas.fr/projects/hhsimulateur
COMMENT=		A simulateur for HyperHolo
LICENSE=		2-clause-bsd

PYDISTUTILSPKG=	yes
NO_CONFIGURE=	yes

DEPEND_ABI.opencv+=	opencv>=2.4
DEPEND_ABI.python+=	python<3

include ../../image/opencv/depend.mk
include ../../mk/sysdep/py-matplotlib.mk
include ../../mk/sysdep/py-numpy.mk
include ../sysdep/py-scipy.mk
#include ../../mk/sysdep/py-sphinx.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
