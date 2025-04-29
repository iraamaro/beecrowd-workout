class Grade
    def self.call
      n1 = get_number("Digite a primeira nota: ")
      n2 = get_number("Digite a segunda nota: ")
      media = ((3.5 * n1) + (7.5 * n2)) / 11
      puts format('MEDIA = %.5f', media)
    end
  
    def self.get_number(mensagem)
      loop do
        print mensagem
        input = gets.chomp
        if valid_number?(input)
          number = input.to_f.round(1)
          return number if number >= 0 && number < 11
        else
          puts "Entrada inválida. Por favor, digite um número positivo."
        end
      end
    end
  
    def self.valid_number?(input)
      input.match?(/\A\d+(\.\d+)?\z/)
    end
  end
  