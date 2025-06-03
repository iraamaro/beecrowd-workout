class C1010
    def initialize(qty_a, price_a, qty_b, price_b)
      @qty_a = qty_a
      @price_a = price_a
      @qty_b = qty_b
      @price_b = price_b
    end
  
    def calculate_total_amount
      result = @qty_a * @price_a + @qty_b * @price_b
      format('%.2f', result)
    end
  
    def to_s
      puts "VALOR A PAGAR: R$ #{calculate_total_amount}"
    end
end

# piece_a = gets.chomp.split(" ")
# piece_b = gets.chomp.split(" ")

# item_a = piece_one[0].to_i
# qty_a = piece_one[1].to_i
# value_a = piece_one[2].to_f

# item_b = piece_two[0].to_i
# qty_b = piece_two[1].to_i
# value_b = piece_two[2].to_f

# C1010.new(qty_a, value_a, qty_b, value_b).to_s
  
def get_positive_integer(prompt)
    loop do
        print prompt
        input = gets.chomp
        return input.to_i if input.match?(/\A\d+\z/) && input.to_i.positive?
        puts "Entrada inválida. Digite um número inteiro positivo."
    end
end
  
def get_positive_float(prompt)
    loop do
        print prompt
        input = gets.chomp
        return input.to_f if input.match?(/\A\d+(\.\d+)?\z/) && input.to_f.positive?
        puts "Entrada inválida. Digite um número decimal positivo."
    end
end
  
puts "Produto 1:"
item_a = get_positive_integer("Código: ")
qty_a = get_positive_integer("Quantidade: ")
value_a = get_positive_float("Valor unitário: ")

puts "\nProduto 2:"
item_b = get_positive_integer("Código: ")
qty_b = get_positive_integer("Quantidade: ")
value_b = get_positive_float("Valor unitário: ")

C1010.new(qty_a, value_a, qty_b, value_b).to_s