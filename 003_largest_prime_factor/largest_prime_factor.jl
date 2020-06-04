function find_largest_prime(num)
    leaf_factors = []
    # Recursively factorize the remaining factor
    function factorize(n)
        divisor = 2
        while (n % divisor) != 0
            divisor = divisor + 1
        end
        push!(leaf_factors, divisor)
        remaining_factor = n ÷ divisor
        if remaining_factor == 2
            push!(leaf_factors, divisor)
            return
        elseif remaining_factor == 1
            return
        else
            factorize(remaining_factor)
            return
        end
    end    
    factorize(num)
    println("Factors: ", leaf_factors)
    largest_prime = maximum(leaf_factors)
    return largest_prime
end

num = 600851475143  
largest_prime = find_largest_prime(num)
println("Largest Prime: ", largest_prime)