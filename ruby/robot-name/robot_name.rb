class Robot
  attr_reader :name

  def initialize
    @name = generate_name
  end

  def reset(n = @name)
    until n != @name do
      @name = generate_name
    end; return @name
  end

  private
  def generate_name
    a = 2.times.map { (65 + rand(26)).chr }.join
    n = "%03d" % rand(0..999)
    a + n.to_s
  end
end
