# Function for calculing te solution of a differential equation using forward euler method

"""
    euler_implicit_method_H()

Find the solution of a first order ordinary differential equation using forward (implicit) euler method

# Example

```julia

```
"""
euler_implicit_method{T}(F::Function, tspan::AbstractVector, y0::AbstractVector{T}) = (F, tspan, y0, abs(tspan[1] - tspan[end]) / 100000)

"""
    euler_implicit_method_H()

Find the solution of a first order ordinary differential equation using forward (implicit) euler method where the user defines his own step value.

# Example

```julia

```
"""
function euler_implicit_method_H{T}(F::Function, tspan::AbstractVector, y0::AbstractVector{T}, h::FloatingPoint)
   tlast = tspan[end]
   tk = tspan[1] + h
   yk = y0

   while tk != tlast
       yk1 = function(G, F, Tk, Yk, h)
            precision = h / 100

            m = y0
            mold = y0 - precision - 1

            while(abs(m - mold)) > precision
                a = y0
                A = G(F, t, a, h)

                b = a + F(t + h, y0)
                B = G(F, t, b, h)

                if A * B < 0
                    throw(error("samge image sign"))
                end

                mold = mold

                m = (a + b) / 2
                M = G(F, t, m, h)

                if M == 0
                    break
                end

                if A * M < 0
                    b = m
                    B = M
                end

                if B * M < 0
                    a = m
                    A = M
                end
            end

            return (m)
       end

       tk += h
       yk = yk1
   end

   tout = tk - h
   yout = yk

   return (tout, yout)
end