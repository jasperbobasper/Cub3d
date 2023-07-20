# Cub3d - Raycasting Time

Cub3d is a group project where we created a 3D graphical representation of a maze from a first-person perspective, using Ray-Casting principles. The map is rendered from a user provided map file where a layout and texture files for the map are specified. This project is functional on Linux and MacOS

The Raycasting is all rendered pixel by pixel using mathematical calculations to determine the wall positions from the perspective of the player. 

Key features:
  - Smooth window management for uninterrupted user interaction.
  - Dynamic wall textures based on wall orientation (North, South, East, West).
  - Customizable floor and ceiling colors
  - Arrow keys and WASD can be used for movement and perspective changes.
  - Program exit with ESC key or window close.

Cub3d challenged us to master Ray-Casting and the miniLibX library, expanding our 3D graphics skills. This was a very positive collaborative experience for me, as we were able to work together very smoothly and learned a lot from each other's methods and skills. 

<img src="https://github.com/jasperbobasper/Cub3d/blob/main/gif/cub3d.gif"/>
An example of the "beach.cub" map with some truly beautiful textures going on

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

## Personal Thoughts

I really had a lot of fun as well as frustration on this project. 

My project partner and I got along really well, however we used a different coworking technique than I usually would do, in that we actually did most of the coding together at the same time. It was interesting that in the end, the project took around as long as I would have expected if we had split up the work and approached it seperately, as when we were working together we were able to keep each other on track and help each other make good decisions. I feel like that really helped us avoid many hours of debugging and editing. 

Neither of us were particularly mathematically inclined people, so it took a lot of time for us to understand the algorithms that we wanted to use so that we could alter them to fit our specific needs and the very (!!) strict school guidelines regarding function length and amount of variables. So while a lot of this project did feel like an uphill battle, I was happy in the end with what I was able to produce with such minimal tools :) 
