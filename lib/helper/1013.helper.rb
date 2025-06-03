class C1013
    def initialize n
        @n = n
    end

    def is_greatest?
        a, b, c = @n.split(" ").map(&:to_i)
        greatest = (a + b + (a - b).abs) / 2
        s = (greatest + c + (greatest - c).abs) / 2
        puts "#{s} eh o maior"
    end
end
  
input = gets.chomp
C1013.new(input).is_greatest?