# Function for calculing the solution of a differential equation using euler's method

"""
    euler_forward_method()

Find the solution of a first order ordinary differential equation using forward (implicit) euler method

# Example

```julia
euler_forward_method((x, t) -> x, 1, (0, 5))[1][end] # returns 143.33937864611195
```
"""
function euler_forward_method(f, x0, span, h = 1.0e-2)
    s, e = span
    steps = Int(floor((e - s) / h))

    x = Vector{Float64}(undef, steps)
    t = Vector{Float64}(undef, steps)

    x[1] = x0
    t[1] = 0

    for i in 1:(steps-1)
        x[i + 1] = x[i] + h * f(x[i], t[i])
        t[i + 1] = t[i] + h
    end

    return x, t
end

"""
    euler_backward_method()

Find the solution of a first order ordinary differential equation using backward (explicit) euler method

# Example

```julia
euler_backward_method()
```
"""
function euler_backward_method(f, x0, span, h)
    # ToDo
end