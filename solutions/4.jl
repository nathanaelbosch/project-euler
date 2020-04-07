# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

is_palindromic(n) = string(n) == string(n)[end:-1:1]

three_digit_numbers = collect(100:999)
three_digit_products = three_digit_numbers * transpose(three_digit_numbers)
three_digit_products = sort(unique(vcat(three_digit_products...)))
palindrome_products = three_digit_products[is_palindromic.(three_digit_products)]
println(palindrome_products[end])
