# - Try to find squish
# Once done this will define 
# 
#  JSONCPP_FOUND - system has squish
#  JSONCPP_INCLUDE_DIR - the squish include directory 
#  JSONCPP_LIBRARIES - Link these to use squish
# 

FIND_PATH(JSONCPP_INCLUDE_DIR NAMES jsoncpp/json.h
  PATHS
  ENV CPATH
  /usr/include
  /usr/local/include
  NO_DEFAULT_PATH
)
FIND_PATH(JSONCPP_INCLUDE_DIR NAMES jsoncpp/json.h)

FIND_LIBRARY(JSONCPP_LIBRARIES NAMES jsoncpp
  PATHS
  ENV LD_LIBRARY_PATH
  ENV LIBRARY_PATH
  /usr/lib64
  /usr/lib
  /usr/local/lib64
  /usr/local/lib
  NO_DEFAULT_PATH
)
FIND_LIBRARY(JSONCPP_LIBRARIES NAMES jsoncpp)

IF(JSONCPP_INCLUDE_DIR AND JSONCPP_LIBRARIES)
   SET(JSONCPP_FOUND TRUE)
ENDIF(JSONCPP_INCLUDE_DIR AND JSONCPP_LIBRARIES)

IF(JSONCPP_FOUND)
  IF(NOT JSONCPP_FIND_QUIETLY)
    MESSAGE(STATUS "Found JsonCpp: ${JSONCPP_LIBRARIES}")
  ENDIF(NOT JSONCPP_FIND_QUIETLY)
ELSE(JSONCPP_FOUND)
  IF(JSONCPP_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could not find JsonCpp")
  ENDIF(JSONCPP_FIND_REQUIRED)
ENDIF(JSONCPP_FOUND)

MARK_AS_ADVANCED(JSONCPP_INCLUDE_DIR JSONCPP_LIBRARIES )
