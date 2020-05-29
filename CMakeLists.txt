cmake_minimum_required(VERSION 3.14.2)

project(build-tools)

# android source code 
set(AOSP android)


# headers files
set(native_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/frameworks/native/include
    ${CMAKE_SOURCE_DIR}/${AOSP}/frameworks/native/libs/binder/include
    )
        
set(safe_iop_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/safe-iop/include
    )
        
set(libbacktrace_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libbacktrace
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libbacktrace/include
    )
                
set(libsystem_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libsystem/include
    )

set(androidfw_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/frameworks/base/libs/androidfw/include
    )
        
set(expat_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/expat
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/expat/lib
    )
         
set(libpng_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/libpng
    )
                
set(protobuf_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/protobuf/android
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/protobuf/src
    )
                
set(zlib_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/zlib
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/zlib/src
    )

set(libcxx_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/libcxx/include
    )

set(libcxxabi_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/libcxxabi/include
    )

set(compiler-rt_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/compiler-rt/include
    )

set(libbase_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/base/include
    )
        
set(libcutils_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libcutils
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libcutils/include
    )
        
set(liblog_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/liblog
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/liblog/include
    )
        
set(libutils_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libutils
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libutils/include
    )
        
set(libziparchive_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libziparchive
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libziparchive/include
    )
        
set(libnativehelper_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/libnativehelper/include_jni
    )
        
set(aapt_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/frameworks/base/tools/aapt
    )
                
set(aapt2_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/frameworks/base/tools/aapt2
    ${CMAKE_SOURCE_DIR}/${AOSP}/frameworks/base/tools/aapt2/frameworks/base/tools/aapt2
    )
        
set(aidl_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/tools/aidl
    )

set(libzopfli_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/zopfli/src
    )

set(zipalign_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/build/tools/zipalign
    )

set(libprocessgroup_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libprocessgroup
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libprocessgroup/include
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libprocessgroup/cgrouprc/include
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libprocessgroup/cgrouprc_format/include
    )

set(libvndksupport_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libvndksupport/include
    ${CMAKE_SOURCE_DIR}/${AOSP}/system/core/libvndksupport/include/vndksupport
    )

set(libjsoncpp_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/jsoncpp/include
    )
	
set(libbuildversion_headers
    ${CMAKE_SOURCE_DIR}/${AOSP}/build/soong/cc/libbuildversion/include
    )


set(gtest_headers                         
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/googletest/googletest/include                              
    )
	
	
set(cpu_features_headers                         
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/cpu_features/include                              
    )
	

set(libartpalette_headers                        
    ${CMAKE_SOURCE_DIR}/${AOSP}/art/libartpalette/include                              
    )

set(libartbase_headers                        
    ${CMAKE_SOURCE_DIR}/${AOSP}/art/libartbase                     
    )
	
set(libdexfile_headers                        
    ${CMAKE_SOURCE_DIR}/${AOSP}/art/libdexfile       
    )
	
set(slang_headers                        
    ${CMAKE_SOURCE_DIR}/${AOSP}/frameworks/compile/slang       
    )

set(libbcc_headers                        
    ${CMAKE_SOURCE_DIR}/${AOSP}/frameworks/compile/libbcc       
    )	
	
set(llvm_headers                        
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/llvm/include       
    )
	
set(clang_headers                        
    ${CMAKE_SOURCE_DIR}/${AOSP}/external/clang/include       
    )
	
	
add_subdirectory(cmake)
