class Calculator
  def sum(a, b)
    check_a = Integer(a) rescue Float(a) rescue nil
    check_b = Integer(b) rescue Float(b) rescue nil

    if check_a == nil
      puts "Primeiro número precisa ser inteiro ou real.\n"
    end
    if check_b == nil
      puts "Segundo número precisa ser inteiro ou real.\n"
    end
    if check_a != nil && check_b != nil
      result = check_a + check_b
      puts "X = #{result}\n"
    end
  end
end
