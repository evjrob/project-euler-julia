function find_prime(prime_index)
    primes = [2]
    candidate = 3
    while length(primes) < prime_index
        remainders = candidate .% primes
        if all(remainders .!= 0)
            push!(primes, candidate)
        end
        candidate += 1 
    end
    return maximum(primes)
end

prime_index = 10001
prime = find_prime(prime_index)
println(prime)