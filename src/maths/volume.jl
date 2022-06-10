# Functions for volumes of various geometric shapes

"""
    volume_cube(side)

Finds volume of a cube

# Example

```julia
volume_cube(3) # returns 27
volume_cube(-1) # returns DomainError
```
"""
function volume_cube(side)
    if side < 0
        throw(DomainError("volume_cube() only works with positive values"))
    end

    return side ^ 3
end

"""
    volume_parallelepiped(side)

Finds volume of a parallelepiped

# Example

```julia
volume_parallelepiped(4, 3, 6) # returns 72
volume_parallelepiped(-1, 0, 0) # returns DomainError
volume_parallelepiped(0, -1, 0) # returns DomainError
volume_parallelepiped(0, 0, -1) # returns DomainError
volume_parallelepiped(-1, -1, -1) # returns DomainError
```
"""
function volume_parallelepiped(length, width, height)
    if length < 0 || width < 0 || height < 0
        throw(DomainError("volume_parallelepiped() only works with positive values"))
    end

    return length * width * height
end

"""
    volume_cylinder(side)

Finds volume of a cylinder

# Example

```julia
volume_cylinder(7, 5) # returns 769.6902001294993
volume_cylinder(-1, 0) # returns DomainError
volume_cylinder(0, -1) # returns DomainError
volume_cylinder(-1, -1) # returns DomainError
```
"""
function volume_cylinder(radius, height)
    if radius < 0 || height < 0
        throw(DomainError("volume_cylinder() only works with positive values"))
    end

    return pi * radius ^ 2 * height
end

"""
    volume_pyramid(side)

Finds volume of a pyramid

# Example

```julia
volume_pyramid(3, 5) # returns 5
volume_pyramid(-1, 0) # returns DomainError
volume_pyramid(0, -1) # returns DomainError
volume_pyramid(-1, -1) # returns DomainError
```
"""
function volume_pyramid(base, height)
    if base < 0 || height < 0height
        throw(DomainError("volume_pyramid() only works with positive values"))
    end

    return base * height / 3
end

"""
    volume_cone(side)

Finds volume of a cone

# Example

```julia
volume_cone(5, 8) # returns 209.43951023931956
volume_cone(-1, 0) # returns DomainError
volume_cone(0, -1) # returns DomainError
volume_cone(-1, -1) # returns DomainError
```
"""
function volume_cone(radius, height)
    if radius < 0 || height < 0
        throw(DomainError("volume_cone() only works with positive values"))
    end

    return (pi * radius ^ 2 * height) / 3
end

"""
    volume_sphere(side)

Finds volume of a sphere

# Example

```julia
volume_sphere(3) # returns 113.09733552923254
volume_sphere(-1) # returns DomainError
```
"""
function volume_sphere(radius)
    if radius < 0
        throw(DomainError("volume_sphere() only works with positive values"))
    end

    return 4 / 3 * pi * radius ^ 3
end

"""
    volume_prism(side)

Finds volume of a prism

# Example

```julia
volume_prism(8, 5) # returns 40
volume_prism(-1, 0) # returns DomainError
volume_prism(0, -1) # returns DomainError
volume_prism(-1, -1) # returns DomainError
```
"""
function volume_prism(base, height)
    if base < 0 || height < 0
        throw(DomainError("volume_prism() only works for non negative values."))
    end

    return base * height
end

"""
    volume_cuboid(side)

Finds volume of a cuboid

# Example

```julia
volume_cuboid(5, 7, 10) # returns 350
volume_cuboid(-1, 0, 0) # returns DomainError
volume-cuboid(0, -1, -1) # returns DomainError
volume_cuboid(-1, -1, 0) # returns DomainError
volume_cuboid(-1, -1, -1) # returns DomainError
```
"""
function volume_cuboid(width, height, length)
    if width < 0 || height < 0 || length < 0
        throw(DomainError("volume_cuboid() only works with positive values"))
    end

    return width * height * length
end