class Fib

    @evens = []

    def self.of(n)
        return n if n <= 1
        self.of(n - 1) + self.of(n - 2)
    end

    def self.even_sum(limit)
        n = 2
        loop do
            answer = Fib.of(n)
            if answer > limit
                break
            elsif answer.even?
                @evens << answer
            end
            n += 1
        end
        @evens.reduce(:+)
    end
end

