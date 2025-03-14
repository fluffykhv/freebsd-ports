--- OrthancFramework/Resources/CMake/ProtobufConfiguration.cmake.orig	2024-12-17 16:33:40 UTC
+++ OrthancFramework/Resources/CMake/ProtobufConfiguration.cmake
@@ -65,22 +65,26 @@ else()
     message(FATAL_ERROR "Please install the libprotobuf-dev package")
   endif()
 
-  set(CMAKE_REQUIRED_LIBRARIES "protobuf")
+  if (${CMAKE_SYSTEM_NAME} STREQUAL "FreeBSD")
+    find_package(Protobuf REQUIRED)
+  else()
+    set(CMAKE_REQUIRED_LIBRARIES "protobuf")
 
-  include(CheckCXXSourceCompiles) 
-  check_cxx_source_compiles(
-    "
+    include(CheckCXXSourceCompiles) 
+    check_cxx_source_compiles(
+      "
 #include <google/protobuf/descriptor.h>
 int main()
 {
   google::protobuf::FieldDescriptor::TypeName(google::protobuf::FieldDescriptor::TYPE_FLOAT);
 }
 "  HAVE_PROTOBUF_LIB)
-  if (NOT HAVE_PROTOBUF_LIB)
-    message(FATAL_ERROR "Cannot find the protobuf library")
+    if (NOT HAVE_PROTOBUF_LIB)
+      message(FATAL_ERROR "Cannot find the protobuf library")
+    endif()
+
+    unset(CMAKE_REQUIRED_LIBRARIES)
   endif()
-  
-  unset(CMAKE_REQUIRED_LIBRARIES)
 
   link_libraries(protobuf)
 endif()
