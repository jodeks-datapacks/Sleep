#> sleep:image/process/generate
#
# This function generates the image data.

data modify storage sleep:image current.image_data set from storage sleep:image image_data
data modify storage sleep:image current.description set from storage sleep:image description
data modify storage sleep:image current.pixel_character set from storage sleep:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data sleep.image 0
# Set width
execute store result score $width sleep.image run data get storage sleep:image width
# Set height
execute store result score $height sleep.image run data get storage sleep:image height
# Set length
scoreboard players operation $length sleep.image = $width sleep.image
scoreboard players operation $length sleep.image *= $height sleep.image
# Clear remaining entries in tellraw
data remove storage sleep:image tellraw

# Add spacing on top
function sleep:image/process/append/line_break
# Loop over image data
function sleep:image/process/loop_over_image_data
# Add spacing on bottom
function sleep:image/process/append/line_break