module Algorithms
using TaylorSeries

# Exports : maths
export approximate_pi

export area_rectangle
export area_square
export area_cube
export area_triangle
export area_heron_triangle
export area_circle
export area_sphere
export area_parallelogram
export area_trapezium
export area_hexagon
export area_octagon

export volume_cube
export volume_parallelepiped
export volume_cylinder
export volume_pyramid
export volume_cone
export volume_sphere
export volume_prism
export volume_cuboid

# Includes : maths
include("maths/approximate_pi.jl")
include("maths/area.jl")
include("maths/volume.jl")
end