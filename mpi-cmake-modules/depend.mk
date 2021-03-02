# robotpkg depend.mk for:	wip/py39-mpi-cmake-modules
# Created:			Guilhem Saurel on Tue, 2 Mar 2021
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
MPI_CMAKE_MODULES_DEPEND_MK:=	${MPI_CMAKE_MODULES_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			mpi-cmake-modules
endif

ifeq (+,$(MPI_CMAKE_MODULES_DEPEND_MK)) # ------------------------------------------

PREFER.mpi-cmake-modules?=		robotpkg

SYSTEM_SEARCH.mpi-cmake-modules=									\
  'include/example/adder/config.hh:/MPI_CMAKE_MODULES_VERSION /s/[^0-9.]//gp'			\
  'lib/cmake/mpi-cmake-modules/mpi-cmake-modulesConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libmpi-cmake-modules.so'									\
  'lib/pkgconfig/mpi-cmake-modules.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=			mpi-cmake-modules

DEPEND_ABI.mpi-cmake-modules?=	mpi-cmake-modules>=1.0.0
DEPEND_DIR.mpi-cmake-modules?=	../../wip/mpi-cmake-modules

endif # MPI_CMAKE_MODULES_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
