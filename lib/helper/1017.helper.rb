class C1017
    def initialize time, speed
      @time = time
      @speed = speed
    end
  
    def energy_spent
      puts format("%.3f", @time * @speed / 12)
    end
  end

  time = gets.chomp.to_f
  speed = gets.chomp.to_f
  
  C1017.new(time, speed).energy_spent