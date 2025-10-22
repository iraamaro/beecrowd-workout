class C1019
  def initialize(total_seconds)
    unless total_seconds.match?(/\A\d+\z/)
      raise ArgumentError, "Digite apenas números inteiros."
    end
    @total_seconds = total_seconds.to_i
  end

  def time_conversion
    hours, remainder = @total_seconds.divmod(3600)
    minutes, seconds = remainder.divmod(60)
    format("%d:%d:%d", hours, minutes, seconds)
  end
end

