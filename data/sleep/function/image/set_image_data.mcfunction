#> sleep:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage sleep:image image_data  
# @writes storage sleep:image width  
# @writes storage sleep:image height  
# @writes storage sleep:image background_color  
# @writes storage sleep:image description  
# @writes storage sleep:image pixel_character.blank  
# @writes storage sleep:image pixel_character.chat  
# @writes storage sleep:image pixel_character.lore

data remove storage sleep:image image_data
data remove storage sleep:image width
data remove storage sleep:image height
data remove storage sleep:image background_color
data remove storage sleep:image description

$data modify storage sleep:image image_data set value $(image_data)
$data modify storage sleep:image width set value $(width)
$data modify storage sleep:image height set value $(height)
$data modify storage sleep:image background_color set value "$(background_color)"
$data modify storage sleep:image description set value $(description)

data modify storage sleep:image pixel_character.blank set value "　"
data modify storage sleep:image pixel_character.pixel set value "▌▌"
data modify storage sleep:image pixel_character.line_break set value '\n'

function sleep:image/process/generate
