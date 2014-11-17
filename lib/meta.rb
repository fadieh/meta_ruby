class Student

  def initialize
    @badges = []
  end

  def award(badge)
    @badges << badge
    self.class.send(:define_method, 'has_' + badge.to_s + '?') {
      @badges.include? badge
    }
  end

  def method_missing(name)
    return false
  end

  def create_method(name, block)
  end

end