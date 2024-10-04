

add_library(SDL2_image_if INTERFACE)

target_include_directories(SDL2_image_if INTERFACE ${CMAKE_CURRENT_LIST_DIR}/include)

list(APPEND ${EXTERNAL_LIBRARYS} "SDL2_image_if")
list(APPEND ${EXTERNAL_LIBRARYS} "SDL2_image")
