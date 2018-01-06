def sum_of_squares(target)
    (1..target).map{ |num| num ** 2}.reduce(:+)
end

def square_of_sum(target)
    (1..target).reduce(:+) ** 2
end

p square_of_sum(100) - sum_of_squares(100)