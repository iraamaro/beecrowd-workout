class C1009
    def self.call
        employee_name = get_name("Digite o nome do colaborador: ")
        employee_salary = get_number("Digite o salário em R$: ")
        order_value = get_number("Digite o valor da venda em R$: ")
        puts format("TOTAL = R$ %.2f", (employee_salary + (order_value * 0.15)))
    end

    def self.get_number(mensagem)
        loop do
            print mensagem
            input = gets.chomp
            if valid_number?(input)
              number = input.to_f.round(2)
              return number if number >= 0
            else
              puts "Entrada inválida. Por favor, digite um número positivo."
            end
        end
    end

    def self.get_name(mensagem)
        loop do
            print mensagem
            input = gets.chomp
            if valid_name?(input)
                name = input.strip.split.map(&:capitalize).join(" ")
                return name if name != nil
            else
                puts "Entrada inválida. Por favor, digite um sem espaços no início ou fim."
            end
        end
    end

    def self.valid_number?(input)
        input.match?(/\A\d+(\.\d+)?\z/)
    end

    def self.valid_name?(input)
        input.match?(/\A[\p{L}\d](?:[\p{L}\d\s_-]*[\p{L}\d])?\z/u)
    end
end