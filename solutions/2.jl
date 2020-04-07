function main()
    a, b = 1, 2
    sum = 0

    while b <= 4_000_000
        if b % 2 == 0
            sum += b
        end 
        c = a + b
        a, b = b, c
    end
    print(sum)
end


main()
