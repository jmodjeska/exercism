class Prime
  def self.nth(i)
    raise ArgumentError.new("数太小") unless i > 0
    primes, t = [1, 2], 3
    until primes.size > i do
      max = Math.sqrt(t).round
      primes << t unless (2..max).any? { |x| t % x == 0 }
      t += 2
    end
    return primes[i]
  end
end
