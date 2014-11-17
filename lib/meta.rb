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

  define_method(:wilma) { puts "LOLOLOLOL" }

end

class B < Student
	define_method(:has_unixoid?, instance_method(:fred))
end

a = B.new
a.barney
a.wilma
a.create_method(:betty) { p self }
a.betty
a.create_method(:has_unixoid?) { puts @badges.include?('unixoid')}
a.has_unixoid?
b = Student.new
b.lol

