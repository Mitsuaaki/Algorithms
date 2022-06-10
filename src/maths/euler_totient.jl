# Function to calculte Euler's totient phi

"""
    euler_totient(n)

Find the Euler's totient phi, Euler Totient Function is also known as phi function.

# Example

```julia
euler_totient(5) # returns 4.0
```
"""
function euler_totient(n)
    result = n;
    i = 2;

    while(i * i <= n)
        if(n % i == 0)
            while(n % i == 0)
                n /= i;
            end

            result -= result / i;
        end

        i += 1;
    end

    if(n > 1)
        result -= result / n;
    end

    return result;
end