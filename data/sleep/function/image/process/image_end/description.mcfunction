# Append blank
function sleep:image/process/append/blank

data modify storage sleep:image tellraw append \
  from storage sleep:image current.description_text

# Append blank
function sleep:image/process/append/blank

# Append line_break
execute unless score $index.image_data sleep.image = $length sleep.image \
  run function sleep:image/process/append/line_break

# Remove first element from the description
data remove storage sleep:image current.description[0]
 