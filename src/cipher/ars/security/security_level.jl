include("standard_list.jl")
using Random

module security_level
    mutable struct handler
       sec::Int
       add::String
       f_break::String
       s_break::String
    end

    # I have an error here, line 20
    function genRandomString(txt_len::Int64, multiplier::Float64)
        security_string::String = "`"

        for i in time():(time() + txt_len)
            # can't use convert() because it return InexactError
            # InexactError happens when you try to convert a value to an exact type (like integer types, but unlike floating-point types) in which the original value cannot be exactly represented
            # So i decided to use floor() instead
            Random.seed!(UInt64(floor(time() * i * multiplier) + (multiplier * time())))
            security_string += CHAR_LIST[rand() % (getSize() - 1)]
        end

        return security_string
    end

    function serializeData(s::Int, txt_len::String)
        h = handler()

        h.sec = s * 5
        h.add = genRandomString(txt_len, s * (time() + 2))
        h.f_break = genRandomString(txt_len, s * (time() - 2))
        h.s_break = genRandomString(txt_len, s * (time() / 2))
    end
end