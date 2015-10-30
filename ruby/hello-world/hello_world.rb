class HelloWorld

  def self.hello(name = nil)
    name = "World" if name.nil?
    "Hello, #{name}!"
  end

end
