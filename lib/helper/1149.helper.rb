class C1149
  def initialize(line)
    # Converte a linha inteira em um array de números
    @numbers = line.split.map(&:to_i)
  end

  def sum_group
    # O primeiro número da lista é o 'A'.
    # O método .shift remove o primeiro elemento do array e o retorna.
    a = @numbers.shift
    
    n = 0
    # Itera sobre os números restantes para encontrar o primeiro N > 0
    @numbers.each do |num|
      if num > 0
        n = num
        break # Encontrou um N válido, pode parar de procurar
      end
    end

    # Se, por acaso, nenhum N > 0 for encontrado, não faz nada.
    # (O problema garante que um N > 0 sempre será fornecido).
    return if n <= 0

    # Calcula a soma. A forma mais simples é usar um loop.
    # sum = 0
    # (0...n).each do |i|
    #   sum += (a + i)
    # end
    
    # Outra forma de calcular a soma (usando a fórmula de uma Progressão Aritmética)
    sum = (a + (a + n - 1)) * n / 2

    puts sum
  end
end

# Lê a linha de entrada inteira, que pode conter vários números
input_line = gets.chomp
C1149.new(input_line).sum_group