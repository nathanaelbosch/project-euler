# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


function main(numbers)
    for i in 1:length(numbers)
        for j in i+1:length(numbers)
            if numbers[j] % numbers[i] == 0
                numbers[j] ÷= numbers[i]
            end
        end
    end
    println(numbers)
    println(prod(numbers))
end


@time main(collect(1:20))
