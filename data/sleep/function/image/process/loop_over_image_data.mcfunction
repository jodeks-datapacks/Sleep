# Copy current pixel
data modify storage sleep:image current.pixel_color set \
  from storage sleep:image current.image_data[0]
data modify storage sleep:image current.description_text set \
  from storage sleep:image current.description[0]

scoreboard players add $index.image_data sleep.image 1

# Calculate column
scoreboard players operation $index.column sleep.image = $index.image_data sleep.image
scoreboard players operation $index.column sleep.image %= $width sleep.image

# Calculate row
scoreboard players operation $index.row sleep.image = $index.image_data sleep.image
scoreboard players operation $index.row sleep.image /= $width sleep.image

# Append start spacing
execute if score $index.column sleep.image matches 1 run \
  function sleep:image/process/append/blank

# Append colored pixel
execute unless data storage sleep:image current{pixel_color: ''} run \
  function sleep:image/process/append/pixel
# Append background pixel
execute if data storage sleep:image current{pixel_color: ''} run \
  function sleep:image/process/append/background

# Append description
execute if score $index.column sleep.image matches 0 run \
    function sleep:image/process/image_end/description

# Remove first element from the image_data array
data remove storage sleep:image current.image_data[0]
# Loop over rows
execute if score $index.row sleep.image < $height sleep.image run \
  function sleep:image/process/loop_over_image_data
 