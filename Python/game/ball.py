import pygame, sys, os

os.environ["SDL_VIDEODRIVER"] = "dummy"
pygame.init()
pygame.display.list_modes()

screen = pygame.display.set_mode((600,400))
pygame.display.set_caption("Pygame 游戏")

while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            sys.exit()
        pygame.display.update()