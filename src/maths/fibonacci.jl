#

"""
    fibonacci(n)

In mathematics, the Fibonacci sequence is a sequence of integers in which each term is the sum of the two preceding terms.

# Example

```julia
fibonacci(10) # returns 55
```
"""
function fibonacci(n)
    if n <= 1
        return n
    end

    return fibonacci(n - 1) + fibonacci(n - 2);
end