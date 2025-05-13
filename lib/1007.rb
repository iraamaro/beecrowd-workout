class C1007
    def self.call
        a = get_number("Digite o número n1: ")
        b = get_number("Digite o número n2: ")
        c = get_number("Digite o número n3: ")
        d = get_number("Digite o número n4: ")
        dif = ((a * b) - (c * d))
        puts "DIFERENCA = #{dif}"
    end

    def self.get_number(mensagem)
        loop do
            print mensagem
            input = gets.chomp
            return input.to_i if valid_number?(input)
            puts "Entrada inválida. Por favor, digite um número inteiro."
        end
    end

    def self.valid_number?(input)
        input.match?(/\A-?\d+\z/)
    end
end