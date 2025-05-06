class C1008
    def self.call
        employee_id = get_number("Digite o id do colaborador: ")
        worked_hours = get_number("Digite as horas trabalhadas: ")
        price_per_hour = get_number("Digite o salário por hora: ")
        puts format("NUMBER = %.0f\nSALARY = U$ %.2f", employee_id, (worked_hours * price_per_hour))
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

    def self.valid_number?(input)
        input.match?(/\A\d+(\.\d+)?\z/)
    end
end