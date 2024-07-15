lib_from_repo(linux-core popcorn-dev main)
dep          (linux-core)

add_kernel_package(popcorn)
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

kernel_package_include(popcorn ${CMAKE_SOURCE_DIR}/lib/linux-core/include)
kernel_package_include(popcorn ${CMAKE_SOURCE_DIR}/lib/popcorn/include)

kernel_package_build_host(popcorn)

kernel_package_module(popcorn popcorn)