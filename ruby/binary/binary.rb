class Binary

  VERSION = 1

  def initialize(input)
    @input = input
    validate
  end

  def to_decimal
    @input.to_s.split("")
      .reverse
      .map.with_index { |digit, i| digit.to_i * ( 2**i ) }
      .reduce(:+)
  end

  def validate
    raise ArgumentError.new("Invalid input") if @input.match(/[^10]/)
  end
end
