project(ImguiExample)
cmake_minimum_required(VERSION 3.8)

# 3rd party libraries
include(cmake/thirdparty.cmake)

include_directories(
    ${OPENGL_INCLUDE_DIR}
    ${GLFW_INCLUDE_DIR}
    ${GLAD_INCLUDE_DIR}
    ${IMGUI_INCLUDE_DIR}
    ${IMPLOT_INCLUDE_DIR}
    )
    
add_executable(main src/main.cpp)
target_link_libraries( main
    ${OPENGL_LIBRARIES}
    ${GLFW_LIBRARIES}
    ${GLAD_LIBRARIES}
    ${IMGUI_LIBRARIES}
    ${IMPLOT_LIBRARIES}
    )

