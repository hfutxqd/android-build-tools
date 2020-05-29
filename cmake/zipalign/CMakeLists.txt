cmake_minimum_required(VERSION 3.14.2)

project(zipalign)

set(ZIPALIGN ${CMAKE_SOURCE_DIR}/${AOSP}/build/tools/zipalign)

set(ZIPALIGN_SRC_FILES
    ${ZIPALIGN}/ZipAlign.cpp
    ${ZIPALIGN}/ZipEntry.cpp
    ${ZIPALIGN}/ZipFile.cpp
	)

include_directories(
    ${zlib_headers}
    ${libzopfli_headers}
    ${libutils_headers}
    ${libcutils_headers}
    ${androidfw_headers}
    ${liblog_headers}
    ${libbase_headers}
    ${libziparchive_headers}
    )

set(CMAKE_CXX_FLAGS "${GLOBAL_CXX_FLAGS}")

# static linking
set(CMAKE_EXE_LINKER_FLAGS "-static")

add_executable(zipalign ${ZIPALIGN_SRC_FILES})
target_link_libraries(zipalign utils cutils ziparchive log z base zopfli cpu_features c++ c++abi -lm -ldl)
