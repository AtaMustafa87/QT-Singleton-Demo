# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\DigitalAnalogIODemo_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\DigitalAnalogIODemo_autogen.dir\\ParseCache.txt"
  "DigitalAnalogIODemo_autogen"
  )
endif()
