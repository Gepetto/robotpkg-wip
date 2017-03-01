# robotpkg Makefile for:	wip/
# Created:			Rohan Budhiraja on Fri, 1 Mar 2017
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
EIGEN_QUADPROG_DEPEND_MK:=	${EIGEN_QUADPROG_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		eigen-quadprog
endif

ifeq (+,$(EIGEN_QUADPROG_DEPEND_MK)) # --------------------------------------

PREFER.eigen-quadprog?=	robotpkg

SYSTEM_SEARCH.eigen-quadprog=\
	lib/libeigen-quadprog.so

DEPEND_USE+=		eigen-quadprog

DEPEND_ABI.eigen-quadprog?=	eigen-quadprog>=1.0.0
DEPEND_DIR.eigen-quadprog?=	../../wip/eigen-quadprog

endif # eigen-quadprog_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
