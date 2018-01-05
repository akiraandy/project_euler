# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_of_3_and_five(target)
    throw if target < 1
    numbers = (1...target).to_a
    numbers.select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
end

multiples_of_3_and_five(1000)

