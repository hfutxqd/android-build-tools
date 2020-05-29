cmake_minimum_required(VERSION 3.14.2)

project(aidl)

set(AIDL ${CMAKE_SOURCE_DIR}/${AOSP}/system/tools/aidl)

find_package(BISON REQUIRED)
find_package(FLEX REQUIRED)

if(BISON_FOUND)
    message(STATUS "found bison..")
endif()

if(FLEX_FOUND)
    message(STATUS "found flex..")
endif()

# generate aidl_language_y.h and aidl_language_y.cpp
bison_target(
    LangParser ${CMAKE_SOURCE_DIR}/${AOSP}/system/tools/aidl/aidl_language_y.yy ${CMAKE_SOURCE_DIR}/${AOSP}/system/tools/aidl/aidl_language_y.cpp
    DEFINES_FILE ${CMAKE_SOURCE_DIR}/${AOSP}/system/tools/aidl/aidl_language_y.h
)

# generate aidl_language_l.h and aidl_language_l.cpp
flex_target(
    LangScanner ${CMAKE_SOURCE_DIR}/${AOSP}/system/tools/aidl/aidl_language_l.ll ${CMAKE_SOURCE_DIR}/${AOSP}/system/tools/aidl/aidl_language_l.cpp
    DEFINES_FILE ${CMAKE_SOURCE_DIR}/${AOSP}/system/tools/aidl/aidl_language_l.h
)

# add dependency
add_flex_bison_dependency(LangScanner LangParser)

set(LIBAIDL_COMMON_SRC_FILES
    ${BISON_LangParser_OUTPUTS}
    ${FLEX_LangScanner_OUTPUTS}
    ${AIDL}/aidl.cpp
    ${AIDL}/aidl_checkapi.cpp
    ${AIDL}/aidl_const_expressions.cpp
    ${AIDL}/aidl_language.cpp
    ${AIDL}/aidl_language_l.ll
    ${AIDL}/aidl_language_y.yy
    ${AIDL}/aidl_typenames.cpp
    ${AIDL}/aidl_to_cpp.cpp
    ${AIDL}/aidl_to_java.cpp
    ${AIDL}/aidl_to_ndk.cpp
    ${AIDL}/ast_cpp.cpp
    ${AIDL}/ast_java.cpp
    ${AIDL}/code_writer.cpp
    ${AIDL}/generate_cpp.cpp
    ${AIDL}/aidl_to_cpp_common.cpp
    ${AIDL}/generate_ndk.cpp
    ${AIDL}/generate_java.cpp
    ${AIDL}/generate_java_binder.cpp
    ${AIDL}/generate_aidl_mappings.cpp
    ${AIDL}/import_resolver.cpp
    ${AIDL}/line_reader.cpp
    ${AIDL}/io_delegate.cpp
    ${AIDL}/options.cpp
    )

include_directories(
    ${aidl_headers}
    ${libbase_headers}
    ${liblog_headers}
    )

set(CMAKE_CXX_FLAGS "${GLOBAL_CXX_FLAGS} -O0 -Wextra")
# static linking
set(CMAKE_EXE_LINKER_FLAGS "-static")

add_library(aidl-common STATIC ${LIBAIDL_COMMON_SRC_FILES})
target_link_libraries(aidl-common)

# aidl
add_executable(aidl ${AIDL}/main.cpp)
target_link_libraries(aidl aidl-common base log c++ c++abi -ldl)


# aidl-cpp
#set(CMAKE_CXX_FLAGS "${GLOBAL_CXX_FLAGS} -O0 -Wextra -DAIDL_CPP_BUILD")
#add_executable(aidl-cpp ${AIDL}/main.cpp)
#target_link_libraries(aidl-cpp)


