# Find the largest palindrome product of numbers <= max_num
function find_largest_palindrome(max_num)
    largest_palindrome = 0
    for i = 0:max_num, j = 0:max_num
        prod = i * j
        if string(prod) == reverse(string(prod)) && prod > largest_palindrome
            largest_palindrome = prod
        end
    end
    return largest_palindrome
end

max_num = 999
largest_palindrome = find_largest_palindrome(max_num)
println("Largest Palindrome Product: ", largest_palindrome)