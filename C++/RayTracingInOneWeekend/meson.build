project('RayTracingInOneWeekend', 'cpp', default_options : ['c_std=c11', 'cpp_std=c++23'])
inc = include_directories('include')

subdir('include')
subdir('test')
subdir('src')

pkg_mod = import('pkgconfig')
#pkg_mod.generate(libraries : foolib)

fmt_dep=dependency('fmt')
glfw3_dep=dependency('glfw3')

# executable('gl', 'gl.cpp', dependencies: glfw3_dep)
# executable('ex_5_6_3', ex_5_6_3, dependencies: fmt_dep)
# executable('test_screen', sources: ['Screen.h', 'test_screen.cpp'])
# executable('test_sales_data', sources: [ 'SalesData.h', 'test_sales_data.cpp'])
# executable('modern_cpp_containers', sources: ['modern_cpp_containers.cpp'], dependencies: fmt_dep)
# executable('test_scanf_allocate', sources: ['test_scanf_allocate.cpp'], dependencies: fmt_dep)
