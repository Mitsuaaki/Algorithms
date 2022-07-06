"""
    palindrome(s)

Check if a given string is a palindrome.

# Example
```
palindrome("racecar") # return true
palindrome("hello") # return false
```
"""
function palindrome(s)
    return lowercase(s) == reverse(lowercase(s))
end