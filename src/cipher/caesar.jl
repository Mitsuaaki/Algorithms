"""
    caesar(rot, s)

Encrypts or decrypts a string using the Caesar cipher.

# Example
```julia
caesar(3, "Hello World!") # returns "Khoor Zruog!"
caesar(3, "Khoor Zruog!") # returns "Hello World!"
```
"""
function caesar(rot, s)
    rotate = function (r)
        if 'a' <= r <= 'z'
            v = ((r - 'a') + rot) % 26
            return v + 'a'
        end

        if 'A' <= r <= 'Z'
            v = ((r - 'A') + rot) % 26
            return v + 'A'
        end

        return r
    end

    if s isa Char
        return rotate(s)
    end

    result = ""

    for r in s
        result *= rotate(r)
    end

    return result
end