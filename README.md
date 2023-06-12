# Cub3d - Raycasting Time

⚠️ Code coming soon! ⚠️


Cub3d is a group project where we created a 3D graphical representation of a maze from a first-person perspective, using Ray-Casting principles. The map is rendered from a user provided map file where a layout and texture files for the map are specified.

The Raycasting is all rendered pixel by pixel using mathematical calculations to determine the wall positions from the perspective of the player. 

Key features:
  - Smooth window management for uninterrupted user interaction.
  - Dynamic wall textures based on wall orientation (North, South, East, West).
  - Customizable floor and ceiling colors
  - Arrow keys and WASD can be used for movement and perspective changes.
  - Program exit with ESC key or window close.

Cub3d challenged us to master Ray-Casting and the miniLibX library, expanding our 3D graphics skills. This was a very positive collaborative experience for me, as we were able to work together very smoothly and learned a lot from each other's methods and skills. 

## Usage: 
Map Configuration:

  - Scene description file (.cub) defines the maze and its elements.
  - Map composed of characters: 0 (empty space), 1 (wall), N/S/E/W (player's start position and orientation).
  - Hex codes and pathways to texture files (64x64px xpm)
  - example maps are given in the project files

Compilation:
  - run `make`
  - run program with `./cub3d <path/to/mapfile.cub>`
  - note- on wsl user must have a program such as XPM installed
  - enjoy! 
