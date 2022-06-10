# Function for approximate the number π

using TaylorSeries

"""
    approximate_pi(order)

Finds an approximation of π using a 37th Taylor expansion with John Machin's approach

# Example
```julia
approximate_pi() # returns 3.141592653589793238462643383496777424642594661632063407072684671069773618535135
approximate_pi(-1) # returns DomainError
```
"""
function approximate_pi(order = 37)
    if order < 0
        throw(DomainError("approximate_pi() only works with positive values"))
    end
 
    return 4 * (4 * evaluate(atan(Taylor1(BigFloat, order)), 1 / big(5)) - evaluate(atan(Taylor1(BigFloat, order)), 1 / big(239)))
end