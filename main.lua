local PI = 3.14159
local FRACTION = 4.0 / 3.0

print("Enter Radius:")
local radius = tonumber(io.read())

local volume = FRACTION * PI * (radius^3)

print(string.format("Volume of the sphere: %.1f", volume))
