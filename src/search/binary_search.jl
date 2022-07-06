# https://exercism.org/tracks/julia/exercises/binary-search

"""
    binary_search(array, key)
A simple array search algorithm for finding an element's position in a sorted array

# Example

```julia
sample = [0, 23, 52, 552, 555, 602, 1004]
reversed_sample = reverse(sample)
unsorted_sample = [124, 53, 21, 163]

@test binary_search(sample, 52) # returns 3:3
@test binary_search(sample, 602) # returns 6:6
@test binary_search(reversed_sample, 52; rev = true) # returns 5:5
@test binary_search(reversed_sample, 602; rev = true) # returns 2:2
@test_throws ErrorException binary_search(unsorted_sample, 21)
```
"""
function binary_search(arr, key; rev = false, lt = <, by = identity)
    if issorted(arr) || issorted(arr; rev = true)
        low = !rev ? 1 : length(arr)
        high = !rev ? length(arr) : 1
        middle(l, h) = round(Int, (l + h) // 2)
        key = by(key)

        while !rev ? low <= high : high <= low
            mid = middle(low, high)
            by(arr[mid]) === key && return mid:mid
            if lt(by(arr[mid]), key)
                low = !rev ? mid + 1 : mid - 1
            else
                high = !rev ? mid - 1 : mid + 1
            end
        end

        return !rev ? (low:high) : (high:low)

    else
        throw(error("List not sorted, unable to search value"))
    end
end