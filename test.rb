class Singleton
  attr_reader :name

  private_class_method :new
  def initialize(name)
    @name = name
  end

  def self.instance(name)
    @instance ||= new(name)
  end
end

puts Singleton.instance('First Instance').name # First Instance
puts Singleton.instance('Second Instance').name # First Instance
puts Singleton.instance('Third Instance').name # First Instance

