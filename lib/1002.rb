class C1002
  def self.call
    r = get_number("Digite o raio da circunferência: ")
    # a = Math::PI * r**2
    a = 3.14159 * r**2
    puts format('A=%.4f', a)
  end

  def self.get_number(mensagem)
    loop do
      print mensagem
      input = gets.chomp
      if valid_number?(input)
        number = input.to_f
        return number if number > 0
      else
        puts "Entrada inválida. Por favor, digite um número positivo."
      end
    end
  end

  def self.valid_number?(input)
    input.match?(/\A\d+(\.\d+)?\z/)
  end
end
