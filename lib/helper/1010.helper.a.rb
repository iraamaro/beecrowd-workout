class C1010
    def self.call
      products = []
  
      loop do
        print "Digite o id do produto (ou 'fechar' para encerrar): "
        input_id = gets.chomp.strip
  
        break if input_id.downcase == "fechar"
  
        unless valid_number?(input_id)
          puts "ID inválido. Digite um número positivo ou 'fechar'."
          next
        end
  
        product_quantity = get_number("Digite a quantidade do produto: ")
        product_value = get_number("Digite o valor do produto: ")
  
        products << {
          id: input_id.to_i,
          quantity: product_quantity,
          value: product_value
        }
      end
  
      total = products.map { |p| p[:quantity] * p[:value] }.sum.round(2)
  
    #   puts "\nResumo da compra:"
    #   products.each_with_index do |product, index|
    #     subtotal = (product[:quantity] * product[:value]).round(2)
    #     puts "#{index + 1}. Produto ##{product[:id]}: #{product[:quantity]} × #{product[:value]} =" +
    #     "#{subtotal}"
    #   end
  
      puts "VALOR A PAGAR: R$ #{format('%.2f', total)}"
    end
  
    def self.get_number(mensagem)
      loop do
        print mensagem
        input = gets.chomp.strip
  
        if valid_number?(input)
          number = input.to_f.round(2)
          return number if number >= 0
        end
  
        puts "Entrada inválida. Por favor, digite um número positivo."
      end
    end
  
    def self.valid_number?(input)
      input.match?(/\A\d+(\.\d+)?\z/)
    end
  end