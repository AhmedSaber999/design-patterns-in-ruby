# Singleton Pattern

## Problem
We need to ensure that a class only has one instance.

## Solution
Basically create a **class** with a private constructor and static method that retrieves the instance if found or creates a new one and returns it. 

```ruby

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

```