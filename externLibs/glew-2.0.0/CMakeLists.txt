

add_library(glew2_if INTERFACE)

target_include_directories(glew2_if INTERFACE ${CMAKE_CURRENT_LIST_DIR}/include)

list(APPEND ${EXTERNAL_LIBRARYS} "glew2_if")
list(APPEND ${EXTERNAL_LIBRARYS} "${CMAKE_CURRENT_LIST_DIR}/lib/Release/x64/glew32")
