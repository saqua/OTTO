link_directories("/opt/vc/lib")
set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} "/opt/vc/lib")
target_link_libraries(otto PUBLIC bcm_host vchostif)
target_link_libraries(otto PUBLIC EGL)
target_link_libraries(otto PUBLIC GLESv2)
target_link_libraries(otto PUBLIC dl)
target_include_directories(otto PUBLIC "/opt/vc/include")

otto_option(USE_FBCP "Use FBCP to copy each frame from /dev/fb0 to /dev/fb1. Disable if you dont use FBTFT" OFF)
