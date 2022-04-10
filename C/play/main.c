#include <stdio.h>
#include <wayland-client-core.h>
#include <wayland-client.h>
#include <wayland-server-core.h>
#include <wayland-server.h>

#include "SDL.h"
#include "SDL_log.h"
#include "SDL_surface.h"

int main(int argc, char *argv[]) {
  struct wl_display *display = wl_display_connect(NULL);

  if (!display) {
    fprintf(stderr, "Failed to connect to wayland display.\n");
    return 1;
  }
  fprintf(stderr, "Connection established.\n");
  wl_display_disconnect(display);

  struct wl_display *server_display = wl_display_create();
  if (!server_display) {
    fprintf(stderr, "Failed to create wayland display.\n");
    return 1;
  }
  fprintf(stderr, "Established server display\n");

  const char *socket =
      wl_display_add_socket(server_display, "my_wayland_socket");
  if (!socket) {
    fprintf(stderr, "Failed to add socket to wayland display.\n");
    return 1;
  }
  wl_display_run(server_display);

  wl_display_destroy(server_display);
  return 0;
}
