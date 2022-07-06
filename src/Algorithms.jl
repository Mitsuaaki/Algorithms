module Algorithms
# Exports : maths
# export approximate_pi

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

export euler_totient
export euler_forward_method
# export euler_backward_method

export fibonacci

# Exports : search
export linear_search
export binary_search


# Includes : maths
# include("maths/approximate_pi.jl")
include("maths/area.jl")
include("maths/volume.jl")
include("maths/euler_totient.jl")
include("maths/euler_method.jl")
include("maths/fibonacci.jl")

# Includes : search
include("search/linear_search.jl")
include("search/binary_search.jl")

# Includes : string
include("string/palindrome.jl")

end