class C1004
    def self.call
      a = get_number("Digite o primeiro número: ")
      b = get_number("Digite o segundo número: ")
  
      prod = a * b
      puts "PROD = #{prod.to_i}"
    end
  
    def self.get_number(mensagem)
      loop do
        print mensagem
        input = gets.chomp
  
        return input.to_f if valid_number?(input)
  
        puts "Entrada inválida. Por favor, digite um número válido."
      end
    end
  
    def self.valid_number?(input)
      input.match?(/\A-?\d+(\.\d+)?\z/)
    end
  end
  