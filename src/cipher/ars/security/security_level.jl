include("standard_list.jl")

module security_level
    function genSecurityString(lvl)
        security_string = "`"

        for i in 0:(lvl * 10)
            security_string = CHAR_LIST[rand(0, getSize() - 1)]
        end

        return security_string
    end

    function serializeSecurityData(lvl)
        if lvl <= 4
            return Vector::Pair {
                "spacing" => lvl * 10,
                "first_str_break" => genSecurityString(lvl),
                "second_str_break" => genSecurityString(lvl),
            }
        else
            return Vector::Pair {
                "spacing" => lvl * 9,
                "first_str_break" => genSecurityString(lvl),
                "second_str_break" => genSecurityString(lvl),
            }
        end
    end
end