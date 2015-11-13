class Sieve

  def initialize(input)
    @input = input + 1
  end

  def primes
    field = Array.new(@input, true)
    (2..(Math::sqrt(@input))).each do |num|
      if field[num]
        (0..@input).each do |multiple|
          field[( num**2 ) + ( num*multiple )] = false
        end
      end
    end

    return field.map.with_index do |marked, i|
      i if ( marked ) && ( i > 1 )
    end.reject { |i| i.nil? }
  end
end
