a, b = 1, 2
sum = 0
while a < 4000000
    global a
    global b
    global sum
    a, b = b, a + b
    if a % 2 == 0
        sum = sum + a
    end
end
println(sum)
