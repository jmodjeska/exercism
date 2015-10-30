class Fixnum
  def to_roman
    i = self
    numerals = {
      1    => 'I',
      4    => 'IV',
      5    => 'V',
      9    => 'IX',
      10   => 'X',
      40   => 'XL',
      50   => 'L',
      90   => 'XC',
      100  => 'C',
      400  => 'CD',
      500  => 'D',
      900  => 'CM',
      1000 => 'M'
    }

    rn = []
    while i > 0
      maxnum = numerals.select { |k, v| i >= k }.max
      rn << maxnum[1]
      i -= maxnum[0]
    end
    return rn.join()
  end
end
