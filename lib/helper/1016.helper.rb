class C1016
    def initialize distance
        @distance = distance
    end
    def time_calc
        puts "#{@distance * 2} minutos"
    end
end

distance = gets.chomp.to_i

C1016.new(distance).time_calc