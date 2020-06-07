function pythagoreantriplet(target_sum)
    a = 0
    b = 0
    c = 0
    for ci = target_sum - 2:-1:1
        for bi = 1:target_sum - ci - 1
            for ai = 1:target_sum - ci - bi
                if (ai^2 + bi^2 == ci^2) && (ci + bi + ai == target_sum)
                    a = ai
                    b = bi
                    c = ci
                end
            end
        end
    end
    return (a, b, c)
end

triplet = pythagoreantriplet(1000)
println(triplet)
println(prod(triplet))