# Find the smallest number evenly divisible for all m <= max_divisor
function find_smallest_multiple(max_divisor)
    smallest_multiple = max_divisor
    found_smallest_multiple = false
    while !found_smallest_multiple
        passes_divisor_test = true
        for m = max_divisor:-1:1
            if smallest_multiple % m != 0
                passes_divisor_test = false
                break
            end
        end
        if passes_divisor_test
            found_smallest_multiple = true
        else
            smallest_multiple += max_divisor
        end
    end
    return smallest_multiple
end

max_divisor = 20
smallest_multiple = find_smallest_multiple(max_divisor)
println("Smallest multiple for all of 1 to ", max_divisor, ": ", smallest_multiple)