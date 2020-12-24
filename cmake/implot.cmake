set(IMPLOT_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/thirdparty/implot)
                 
include_directories(${IMPLOT_INCLUDE_DIR})

add_library(implot STATIC 
  ${CMAKE_SOURCE_DIR}/thirdparty/implot/implot.cpp 
  ${CMAKE_SOURCE_DIR}/thirdparty/implot/implot_items.cpp)
target_link_libraries(implot ${IMGUI_LIBRARIES})


set_target_properties(implot PROPERTIES LINKER_LANGUAGE C)
set_target_properties(implot PROPERTIES FOLDER thirdparty)

set(IMPLOT_LIBRARIES implot)