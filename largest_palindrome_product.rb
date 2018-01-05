def largest_palindrome_product(digits)
    max = ("9" * digits).to_i
    min = ("1" + ( "0" * (digits - 1))).to_i
    max_answer = 0
    minmax = (min..max).to_a.reverse
    minmax.each do |num|
        minmax.each do |second_num|
            possible_answer = num * second_num
            stringified_nums = possible_answer.to_s.chars.join
            if stringified_nums.reverse == stringified_nums
                max_answer = [max_answer, possible_answer].max
            end
        end
    end
    max_answer
end

p largest_palindrome_product(3)