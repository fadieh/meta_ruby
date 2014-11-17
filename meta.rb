class Student

  def initialize
    @badges = []
  end

  def fred
  	puts "In fred"
  end

  def award(badge)
    @badges << badge
  end

  def create_method(name, &block)
  	self.class.send(:define_method, name, &block)
  end

  def method_missing(method_name)
  	puts "It's all good, the method #{method_name} doesn't exist"
  end

end