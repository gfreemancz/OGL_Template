

add_subdirectory("group_a")

add_library(Project_main OBJECT)


target_sources(Project_main PRIVATE main.cpp)
target_include_directories(Project_main PUBLIC  ${EXTERNAL_LIBS_HEADER_PATHS})

