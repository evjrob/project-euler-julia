function getprimes(max_value)
    primes = [2]
    prime_candidates = 3:max_value
    current_prime = 2
    while length(prime_candidates) > 0
        remainders = prime_candidates .% current_prime
        prime_candidates = prime_candidates[remainders .!= 0]
        if length(prime_candidates) > 0
            current_prime = prime_candidates[1]
            push!(primes, current_prime)
        end
    end
    return primes
end

primes = @time getprimes(2000000)
println(sum(primes))