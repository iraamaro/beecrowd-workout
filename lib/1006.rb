class C1006
    def self.call
        a = get_number("Digite a primeira nota: ")
        b = get_number("Digite a segunda nota: ")
        c = get_number("Digite a terceira nota: ")
        media = (
            (2 * a.round(1)) + (3 * b.round(1)) +(5 * c.round(1))
        ) / 10
        puts format('MEDIA = %.1f', media)
    end

    def self.get_number(mensagem)
        loop do
            print mensagem
            input = gets.chomp
            if valid_number?(input)
              number = input.to_f.round(1)
              return number if number >= 0 || number <= 10
            else
              puts "Entrada inválida. " +
              "Por favor, digite um número positivo entre 0 e 10."
            end
        end
    end

    def self.valid_number?(input)
        input.match?(/\A(?:10(?:\.0+)?|(?:[0-9](?:\.\d+)?))\z/)
    end
end