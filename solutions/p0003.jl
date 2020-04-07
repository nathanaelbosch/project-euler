# The prime factors of 13195 are 5, 7, 13 and 29
# What is the largest prime factor of the number 600851475143?

# Idea: First get all prime numbers up to a limit;
# Then try if any of them divides the number.

number = 600851475143

function get_prime_numbers(limit, verbose=false)
    # Sieve of Erasthotenes here
    sieve = Array{Bool}(undef, limit)
    sieve .= false
    sieve[1] = true

    # primes = []
    primes = Vector{Int}(undef, limit)
    curr_prime = 2

    i = 1
    while curr_prime > 1
        # Get next to check and add to list of primes
        if verbose println(curr_prime) end
        # append!(primes, curr_prime)
        primes[i] = curr_prime
        # sieve[curr_prime:curr_prime:limit] .= true
        for j in curr_prime:curr_prime:limit
            sieve[j] = true
        end
        curr_prime = argmin(sieve)
        i += 1
    end
    return primes
end


function main()
    limit = convert(Int, floor(sqrt(number)))
    primes = get_prime_numbers(limit)

    for p in primes[end:-1:1]
        if number % p == 0
            print(p)
            break
        end
    end
end


@time main()
