class C1010
    def initialize(qty_a, price_a, qty_b, price_b)
      @qty_a = qty_a
      @price_a = price_a
      @qty_b = qty_b
      @price_b = price_b
    end
  
    def summary
      result = @qty_a * @price_a + @qty_b * @price_b
      format('%.2f', result)
    end
  
    def to_s
      puts "VALOR A PAGAR: R$ #{summary}"
    end
end