# The prime factors of 13195 are 5, 7, 13 and 29
# What is the largest prime factor of the number 600851475143?

# Improved Idea: Just divide the number until it's gone and return the highest divisor!
# To be honest: I achieved this only after reading the forum ^^

n = 600851475143
p = 2

function get_largest_prime_factor(n, p)
    println("Starting number: $n")
    p = 2
    while n > 1
        if n % p == 0
            n  ÷= p
            println("Current number: $n; Current Prime: $p")
        else
            p += 1
        end
    end
    println("The largest prime factor of $n is: $p")
end

@time get_largest_prime_factor(n, p)
