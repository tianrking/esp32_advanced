# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/w0x7ce/esp-idf_v5.2/components/bootloader/subproject"
  "/home/w0x7ce/Desktop/simple_ota_example/build/bootloader"
  "/home/w0x7ce/Desktop/simple_ota_example/build/bootloader-prefix"
  "/home/w0x7ce/Desktop/simple_ota_example/build/bootloader-prefix/tmp"
  "/home/w0x7ce/Desktop/simple_ota_example/build/bootloader-prefix/src/bootloader-stamp"
  "/home/w0x7ce/Desktop/simple_ota_example/build/bootloader-prefix/src"
  "/home/w0x7ce/Desktop/simple_ota_example/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/w0x7ce/Desktop/simple_ota_example/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/w0x7ce/Desktop/simple_ota_example/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
