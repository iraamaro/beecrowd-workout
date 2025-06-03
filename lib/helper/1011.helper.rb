class C1011
    def initialize r
      @r = r
      @PI = 3.14159
    end
  
    def sphere_volume
      result = (4.0 / 3.0) * @PI * @r ** 3
      format("%.3f", result)
    end
  
    def to_s
      puts "VOLUME = #{sphere_volume}"
    end
end
  
r = gets.chomp.to_f

C1011.new(r).to_s