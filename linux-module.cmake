lib_from_repo(linux-core popcorn-dev main)
dep          (linux-core)

add_kernel_package(module)
add_kernel_module (popcorn)

kernel_module_source (
    popcorn
    popcorn-core
    popcorn-collections
    popcorn-linux-core
    popcorn-linux-thread
)

kernel_module_include(popcorn ${CMAKE_SOURCE_DIR}/lib/linux-core/include)
kernel_module_include(popcorn ${CMAKE_SOURCE_DIR}/lib/popcorn/include)

kernel_package_include(module ${CMAKE_SOURCE_DIR}/lib/linux-core/include)
kernel_package_include(module ${CMAKE_SOURCE_DIR}/lib/popcorn/include)

kernel_package_build_host(module)

kernel_package_module(module popcorn)