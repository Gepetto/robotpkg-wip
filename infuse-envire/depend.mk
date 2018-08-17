# robotpkg depend.mk for:	devel/infuse-envire
# Created:			Quentin Labourey on Fri, 17 August 2018

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
INFUSE_ENVIRE:= ${INFUSE_ENVIRE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=      infuse-envire
endif

ifeq (+,$(INFUSE_ENVIRE_DEPEND_MK)) # ---------------------------------------

PREFER.infuse-envire?=    robotpkg

DEPEND_USE+=      infuse-envire

DEPEND_ABI.infuse-envire?=  infuse-envire>=0.1
DEPEND_DIR.infuse-envire= ../../wip/infuse-envire

SYSTEM_SEARCH.infuse-envire=\
	'include/infuse_envire/base-boost_serialization/BaseTypes.hpp' \
	'include/infuse_envire/base-boost_serialization/BoostTypes.hpp' \
	'include/infuse_envire/base-boost_serialization/DynamicSizeSerialization.hpp' \
	'include/infuse_envire/base-boost_serialization/EigenTypes.hpp' \
	'include/infuse_envire/base-logging/Logging.hpp' \
	'include/infuse_envire/base-logging/Singleton.hpp' \
	'include/infuse_envire/base-logging/logging' \
	'include/infuse_envire/base-logging/logging/logging_iostream_style.h' \
	'include/infuse_envire/base-logging/logging/logging_printf_style.h' \
	'include/infuse_envire/base-logging/logging/terminal_colors.h' \
	'include/infuse_envire/base-types/Angle.hpp' \
	'include/infuse_envire/base-types/Eigen.hpp' \
	'include/infuse_envire/base-types/Float.hpp' \
	'include/infuse_envire/base-types/Pose.hpp' \
	'include/infuse_envire/base-types/Time.hpp' \
	'include/infuse_envire/base-types/TransformWithCovariance.hpp' \
	'include/infuse_envire/events/EdgeEvents.hpp' \
	'include/infuse_envire/events/FrameEvents.hpp' \
	'include/infuse_envire/events/GraphEvent.hpp' \
	'include/infuse_envire/events/GraphEventDispatcher.hpp' \
	'include/infuse_envire/events/GraphEventExceptions.hpp' \
	'include/infuse_envire/events/GraphEventPublisher.hpp' \
	'include/infuse_envire/events/GraphEventSubscriber.hpp' \
	'include/infuse_envire/events/GraphItemEventDispatcher.hpp' \
	'include/infuse_envire/events/ItemAddedEvent.hpp' \
	'include/infuse_envire/events/ItemRemovedEvent.hpp' \
	'include/infuse_envire/graph/EnvireGraph.hpp' \
	'include/infuse_envire/graph/Graph.hpp' \
	'include/infuse_envire/graph/GraphExceptions.hpp' \
	'include/infuse_envire/graph/GraphTypes.hpp' \
	'include/infuse_envire/graph/GraphVisitors.hpp' \
	'include/infuse_envire/graph/Path.hpp' \
	'include/infuse_envire/graph/TransformGraph.hpp' \
	'include/infuse_envire/graph/TreeView.hpp' \
	'include/infuse_envire/items/Environment.hpp' \
	'include/infuse_envire/items/Frame.hpp' \
	'include/infuse_envire/items/ItemBase.hpp' \
	'include/infuse_envire/items/RandomGenerator.hpp' \
	'include/infuse_envire/items/Transform.hpp' \
	'include/infuse_envire/serialization/BinaryBufferHelper.hpp' \
	'include/infuse_envire/serialization/ItemHeader.hpp' \
	'include/infuse_envire/serialization/SerializableConcept.hpp' \
	'include/infuse_envire/serialization/Serialization.hpp' \
	'include/infuse_envire/serialization/SerializationHandle.hpp' \
	'include/infuse_envire/util/Demangle.hpp' \
	'lib/libinfuse_envire.so' \
	'lib/pkgconfig/infuse_envire.pc'

endif # INFUSE_ASN1_TYPES_DEPEND_MK ---------------------------------------------

DEPEND_DEPTH:=    ${DEPEND_DEPTH:+=}

