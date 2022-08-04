project('Play', 'cpp')

inc = include_directories('include')

subdir('include')
subdir('test')
subdir('src')
subdir('cpp_primer')

pkg_mod = import('pkgconfig')
#pkg_mod.generate(libraries : foolib)

fmt_dep=dependency('fmt')
glfw3_dep=dependency('glfw3')

executable('test_float', 'test_float.cpp')
executable('hello', 'hello.cpp', dependencies: fmt_dep)
executable('gl', 'gl.cpp', dependencies: glfw3_dep)
executable('ex_5_6_3', ex_5_6_3, dependencies: fmt_dep)
executable('test_screen', sources: ['Screen.h', 'Screen.cpp', 'test_screen.cpp'])
