# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.


is_pythagorean_triplet(a, b, c) = a^2 + b^2 == c^2

function main()
    for a in 1:(1000 ÷ 3)        # a<b<c => Can only be max a third of the rest
        for b in a:((1000-a)÷2)  # b<c => Can only be max half of the rest
            c = 1000 - a - b     # Is already defined by a and b
            if is_pythagorean_triplet(a, b, c)
                println("The Tuple is: $((a, b, c))")
                println("The Product is: $(a*b*c)")
            end
        end
    end
end


@time main()
