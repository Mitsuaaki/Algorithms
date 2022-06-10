# Functions for area of various geometric shapes

"""
    area_rectangle(length, width)

Finds area of a rectangle

# Example

```julia
area_rectangle(5, 10) # returns 50
area_rectangle(-1, 0) # return DomainError
area_rectangle(0, -1) # returns DomainError
area_rectangle(-1, -1) # returns DomainError
```
"""
function area_rectangle(length, width)
    if length < 0 || width < 0
        throw(DomainError(side, "area_rectangle() only works with positive values"))
    end

    return length * width
end

"""
    area_square(side)

Finds area of a square

# Example

```julia
area_square(5) # returns 25
area_square(-1) # returns DomainError
```
"""
function area_square(side)
    if side < 0
        throw(DomainError(side, "area_square() only works with positive values"))
    end

    return side ^ 2
end

"""
    area_cube(side)

Finds area of a cube

# Example

```julia
area_cube(5) # returns 150
area_cube(-1) # returns DomainError
```
"""
function area_cube(side)
    if side < 0
        throw(DomainError(side, "area_circle() only works with positive values"))
    end

    return 6(side ^ 2)
end

"""
    area_triangle(base, height)

Finds area of a triangle

# Example

```julia
area_triangle(5, 7) # returns 17.5
area_triangle(-1, 0) # return DomainError
area_triangle(0, -1) # returns DomainError
area_triangle(-1, -1) # returns DomainError
```
"""
function area_triangle(base, height)
    if base < 0 || height < 0
        throw(DomainError("area_triangle() only works with positive values"))
    end

    return (base * height) / 2
end

"""
    area_heron_triangle(side1, side2, side3)

Finds area of a heron triangle (a triangle is a triangle where each of the lengths of its sides and its area are expressed in rational numbers.)

# Example

```julia
area_heron_triangle(2, 12, 13) # returns 30
area_heron_triangle(-1, 0, 0) # return DomainError
area_heron_triangle(0, -1, 0) # return DomainError
area_heron_triangle(0, 0, -1) # returns DomainError
area_heron_triangle(-1, -1, -1) # returns DomainError
```
"""
function area_heron_triangle(side1, side2, side3)
    if side1 < 0 || side2 < 0 || side3 < 0
        throw(DomainError("area_triangle_three_sides() only accepts non-negative values"))

    elseif side1 + side2 < side3 || side1 + side3 < side2 || side2 + side3 < side1
        throw(DomainError("Given three sides do not form a triangle"))
    end

    semi_perimeter = (side1 + side2 + side3) / 2
    return sqrt(semi_perimeter *(semi_perimeter - side1) *(semi_perimeter - side2) *(semi_perimeter - side3)) 
end

"""
    area_circle(radius)

Finds area of a circle

# Example

```julia
area_circle(8) # returns 201.06192982974676
area_circle(-1) # returns DomainError
```
"""
function area_circle(radius)
    if radius < 0
        throw(DomainError("area_circle() only works with positive values"))
    end

    return π * radius ^ 2
end

"""
    area_sphere(radius)

Finds area of a sphere

# Example

```julia
area_sphere(8) # returns 804.247719318987
area_circle(-1) # returns DomainError
```
"""
function area_sphere(radius)
    if radius < 0
        throw(DomainError("area_sphere() only works width positive values"))
    end

    return 4π * (radius ^ 2)
end

"""
    area_parallelogram(base, height)

Finds area of a parallelogram

# Example

```julia
area_parallelogram(4, 50) # returns 200
area_parallelogram(-1, 0) # return DomainError
area_parallelogram(0, -1) # returns DomainError
area_parallelogram(-1, -1) # returns DomainError
```
"""
function area_parallelogram(base, height)
    if base < 0 || height < 0
        throw(DomainError("area_parallelogram() only works with positive values"))
    end

    return base * height
end

"""
    area_trapezium(Base, base, height)

Finds area of a trapezium

# Example

```julia
area_trapezium(10, 20, 30) # returns 450
area_trapezium(-1, 0, 0) # return DomainError
area_trapezium(0, -1, 0) # return DomainError
area_trapezium(0, 0, -1) # returns DomainError
area_trapezium(-1, -1, -1) # returns DomainError
```
"""
function area_trapezium(Base, base, height)
    if Base < 0 || base < 0 || height < 0
        throw(DomainError("area_trapezium() only works with positive values"))
    end

    return ((Base + base) * height) / 2
end

"""
    area_hexagon(perimeter, apothegm)

Finds area of a hexagon

# Example

```julia
area_hexagon(5, 4) # returns 10
area_heron_triangle(-1, 0) # return DomainError
area_heron_triangle(0, -1) # returns DomainError
area_heron_triangle(-1, -1) # returns DomainError
```
"""
function area_hexagon(perimeter, apothegm)
    if perimeter < 0 || apothegm < 0
        throw(DomainError("area_hexagon() only works width positive values"))
    end

    return (perimeter * apothegm) / 2
end

"""
    area_octagon(side)

Finds area of a octagon

# Example

```julia
area_octagon(6) # returns 173.82337649086284
area_octagon(-1) # returns DomainError
```
"""
function area_octagon(side)
    if side < 0
        throw(DomainError("area_octagon() only works width positive values"))
    end

    return 2 * side ^ 2 * (1 +  sqrt(2))
end