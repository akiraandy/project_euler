require 'prime'

def sum_of_primes_below(max)
    sum_of_primes = []
    Prime.each do |prime|
        if prime < max
            sum_of_primes << prime
        else
            return sum_of_primes.reduce(:+)
        end
    end
end

p sum_of_primes_below(2000000)