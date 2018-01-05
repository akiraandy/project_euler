require 'prime'

def prime_factors(num)
    return [num] if num <= 3
    prime_array = []
    list_of_possible_factors = (Prime.first (Math.sqrt(num) + 1)) << num
    while num >= 2
        list_of_possible_factors.each do |prime|
            if num % prime == 0
                prime_array << prime
                num = num / prime
            end
        end
    end
    prime_array
end

def smallest_multiple(limit)
    range = (1..limit).to_a
    factors = range.map { |num| prime_factors(num) }
    hash = {}
    factors.each do |factor_arr|
        factor_arr.uniq.each do |uniq_factor|
            if !hash.include?(uniq_factor) 
                hash[uniq_factor] = factor_arr.count{|num| num == uniq_factor}
            else
                hash[uniq_factor] = [hash[uniq_factor], factor_arr.count{|num| num == uniq_factor}].max
            end
        end
    end
    hash.map {|key, value| [key] * value}.flatten.reduce(:*)
end

p smallest_multiple(20)
