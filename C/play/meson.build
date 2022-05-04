project('play', 'c')
sdl2_dep = dependency('sdl2')
wayland_dep = [dependency('wayland-client'),dependency('wayland-server')]
executable('demo', 'main.c', dependencies: [wayland_dep, sdl2_dep])
executable('sdl2_demo', 'sdl2_demo.c', dependencies: sdl2_dep)
