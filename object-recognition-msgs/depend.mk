# robotpkg depend.mk for:	wip/object-recognition-msgs
# Created:			Guilhem Saurel on Fri, 19 Oct 2018
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OBJECT_RECOGNITION_MSGS_DEPEND_MK:=	${OBJECT_RECOGNITION_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		object-recognition-msgs
endif

ifeq (+,$(OBJECT_RECOGNITION_MSGS_DEPEND_MK)) # --------------------------------------

PREFER.object-recognition-msgs?=	robotpkg

DEPEND_USE+=		object-recognition-msgs

DEPEND_ABI.object-recognition-msgs?=	object-recognition-msgs>=0.4.1
DEPEND_DIR.object-recognition-msgs?=	../../wip/object-recognition-msgs

SYSTEM_SEARCH.object-recognition-msgs=\
	include/object_recognition_msgs/ObjectType.h	\
	'lib/pkgconfig/object_recognition_msgs.pc:/Version/s/[^0-9.]//gp'

endif # OBJECT_RECOGNITION_MSGS_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
