
def special_pythagorean_triplet(target)
    a = target / 3
    b = target / 2
    c = Math.sqrt(target)
    (1..a).each do |a_num|
        (1..b).each do |b_num|
            c_num = target - a_num - b_num
            return [a_num, b_num, c_num] if (a_num ** 2 + b_num ** 2 == c_num ** 2)
        end
    end
end

p special_pythagorean_triplet(1000)