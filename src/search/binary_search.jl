# https://exercism.org/tracks/julia/exercises/binary-search
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