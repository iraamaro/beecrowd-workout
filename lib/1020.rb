class C1020
  def initialize(age_days)
    invalid_input = !(
        age_days.is_a?(Integer) ||
        (age_days.is_a?(String) && age_days.match?(/\A\d+\z/))
    )
    raise ArgumentError, "Digite apenas números inteiros." if invalid_input
    @age_days = age_days.to_i
  end

  def age_conversion
    years, remainder = @age_days.divmod(365)
    months, days = remainder.divmod(30)
    format("%d ano(s)\n%d mes(es)\n%d dia(s)", years, months, days)
  end
end

