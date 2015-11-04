class Grains
  def self.square(n)
    2**(n - 1)
  end

  def self.total
    1.upto(64).reduce { |sum, s| sum + 2**(s - 1) }
  end
end
