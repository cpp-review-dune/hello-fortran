include_directories(${CMAKE_BINARY_DIR}/demo/)

#file(GLOB_RECURSE myModules ${CMAKE_BINARY_DIR}/../other_source/*.f90)

add_executable(hello hello.f90)