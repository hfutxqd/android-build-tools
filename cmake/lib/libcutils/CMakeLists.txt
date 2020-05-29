cmake_minimum_required(VERSION 3.14.2)

project(libcutils)

set(LIBCUTILS ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libcutils)

set(LIBCUTILS_SRC_FILES
    ${LIBCUTILS}/fs.cpp
    ${LIBCUTILS}/hashmap.cpp
    ${LIBCUTILS}/multiuser.cpp
    ${LIBCUTILS}/socket_inaddr_any_server_unix.cpp
    ${LIBCUTILS}/socket_local_client_unix.cpp
    ${LIBCUTILS}/socket_local_server_unix.cpp
    ${LIBCUTILS}/socket_network_client_unix.cpp
    ${LIBCUTILS}/sockets_unix.cpp
    ${LIBCUTILS}/str_parms.cpp
    ${LIBCUTILS}/config_utils.cpp
    ${LIBCUTILS}/canned_fs_config.cpp
    ${LIBCUTILS}/iosched_policy.cpp
    ${LIBCUTILS}/load_file.cpp
    ${LIBCUTILS}/native_handle.cpp
    ${LIBCUTILS}/record_stream.cpp
    ${LIBCUTILS}/sockets.cpp
    ${LIBCUTILS}/strlcpy.c
    ${LIBCUTILS}/threads.cpp
    ${LIBCUTILS}/android_get_control_file.cpp
    ${LIBCUTILS}/android_reboot.cpp
    ${LIBCUTILS}/ashmem-dev.cpp
    ${LIBCUTILS}/fs_config.cpp
    ${LIBCUTILS}/ashmem-host.cpp
    ${LIBCUTILS}/trace-host.cpp
    ${LIBCUTILS}/klog.cpp
    ${LIBCUTILS}/partition_utils.cpp
    ${LIBCUTILS}/properties.cpp
    ${LIBCUTILS}/qtaguid.cpp
    ${LIBCUTILS}/trace-dev.cpp
    ${LIBCUTILS}/uevent.cpp
    ${LIBCUTILS}/arch-arm64/android_memset.S
    )

include_directories(
    ${libcutils_headers}
    ${liblog_headers}
    ${libbase_headers}
    ${libutils_headers}
    ${libprocessgroup_headers}
    )

set(CMAKE_CXX_FLAGS "${GLOBAL_CXX_FLAGS}")

add_library(cutils STATIC ${LIBCUTILS_SRC_FILES})
target_link_libraries(cutils)
