# Function for calculing te solution of a differential equation using forward euler method

"""
    euler_method()

Find the solution of a differential equation using forward euler method

# Example

```julia

```
"""
function euler_method(f, x0, span, h = 1.0e-2)
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