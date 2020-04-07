# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.


# First idea: List all primes. But this is slow! Expanding the list of primes is expensive, and a number modulo a list is expensive!
function _get_primes_below(n)
    primes = [2]
    candidate = 3
    while candidate < n
        if !any(candidate .% primes .== 0)
            append!(primes, candidate)
        else
            candidate += 1
        end
    end
    return primes
end


# println("Solution: $(sum(get_primes_below(2_000_000)))")



# FASTER & BETTER
function is_prime(c)
    for a in 2:convert(Int, floor(sqrt(c)))
        if c%a == 0
            return false
        end
    end
    return true
end


@time println("Solution: $(sum(filter(is_prime, 2:2_000_000)))")
