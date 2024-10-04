cmake_minimum_required(VERSION 3.5)
 
project(ProjectTemplateOGL)

set(PROJECT_NAME ProjectTemplateOGL)
set(PROJECT_DIR_SOURCE "src")
set(PROJECT_DIR_OPUTPUT "output")



set(EXTERNAL_LIBS)
set(EXTERNAL_LIBS_HEADER_PATHS)

add_subdirectory("externLibs")


 
add_subdirectory("${PROJECT_DIR_SOURCE}")



message(STATUS "${PROJECT_DIR_SOURCE}")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_DIR_OPUTPUT}")


add_executable(${PROJECT_NAME})

target_link_libraries (${PROJECT_NAME} PRIVATE Project_main)
target_link_libraries (${PROJECT_NAME} PRIVATE component_a)




target_link_libraries(${PROJECT_NAME} PRIVATE ${EXTERNAL_LIBS})
target_include_directories(${PROJECT_NAME} PUBLIC  ${EXTERNAL_LIBS_HEADER_PATHS})

add_definitions(-DSDL_MAIN_HANDLED)


set_target_properties(${PROJECT_NAME}
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "arch"
    LIBRARY_OUTPUT_DIRECTORY "lib"
    RUNTIME_OUTPUT_DIRECTORY "bin"
)

