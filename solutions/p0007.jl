# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

# Again no sieve, it was not very efficient..


function get_nth_prime_number(n)
    primes = [2]
    # primes = fill(2, n-1)
    candidate = 3
    i = 1
    while i < n
        if !any(candidate .% primes .== 0)
            append!(primes, candidate)
            # primes[i] = candidate
            i += 1
        else
            candidate += 1
        end
    end
    return candidate
end


@time println("Solution: $(get_nth_prime_number(10_001))")
