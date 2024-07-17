cmake_minimum_required(VERSION 3.25)

project(zpaq)

add_library(libzpaq libzpaq.cpp libzpaq.h)

add_executable(zpaq zpaq.cpp)

set_property(TARGET libzpaq PROPERTY OUTPUT_NAME zpaq)

target_link_libraries(zpaq PRIVATE libzpaq)

install(TARGETS zpaq libzpaq)

install(FILES libzpaq.h DESTINATION include)

if(NOT WIN32)
    # cpan Pod::Man
    add_custom_command(
        TARGET zpaq
        POST_BUILD
        COMMAND pod2man zpaq.pod > zpaq.1
        WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
    )
    install(FILES zpaq.1 DESTINATION share/man/man1)
endif()