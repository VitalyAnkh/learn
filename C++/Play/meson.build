project('Play', 'cpp')

subdir('src')
subdir('cpp_primer')

fmt_dep=dependency('fmt')
glfw3_dep=dependency('glfw3')

executable('test_float', 'test_float.cpp')
executable('hello', 'hello.cpp', dependencies: fmt_dep)
executable('gl', 'gl.cpp', dependencies: glfw3_dep)
executable('ex_5_6_3', ex_5_6_3, dependencies: fmt_dep)
