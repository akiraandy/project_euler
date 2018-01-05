require 'prime'

def largest_prime_factor(target)
    Math.sqrt(target).floor.downto(1) do |num|
        return num if target % num == 0 && Prime.prime?(num)
    end
end

largest_prime_factor(600851475143)