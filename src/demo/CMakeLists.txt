include_directories(${CMAKE_BINARY_DIR}/demo/)

#file(GLOB_RECURSE myModules ${CMAKE_BINARY_DIR}/../other_source/*.f90)

add_executable(hello hello.f90)

add_executable(variables variables.f90)

add_executable(read_value read_value.f90)

add_executable(arithmetic arithmetic.f90)

add_executable(float float.f90)

add_executable(float2 float2.f90)

add_executable(arrays arrays.f90)

add_executable(array_slice array_slice.f90)

add_executable(allocatable allocatable.f90)

add_executable(string string.f90)

add_executable(string_array string_array.f90)

add_executable(main main.f90)

# add_executable(call_sub call_sub.f90)