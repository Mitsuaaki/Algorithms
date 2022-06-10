"""
    linear_search(array, key)
A simple array search algorithm, element per element until the key is found in the array

# Example

```julia
linear_search([1, 5, 3, 9, 7, 10], 7) # returns true
linear_search([1, 5, 3, 9, 7, 10], 8) # return false
```
"""
function linear_search(array, key)
    for i in 1:length(array)
        if array[i] == key
            return true
        end
    end

    return false
end