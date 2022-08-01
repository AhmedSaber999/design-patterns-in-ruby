# Factory Pattern

## Problem
We need to create objects without having to specify the exact class of the object that will be created.

## Solution
Basically create a **Factory class** that has a hash for all concerned object classes. and a **factory method** that takes two arguments class name and class attributes. 

```ruby
class A
  def initialize(attributes); end
end

class B
  def initialize(attributes); end
end

class C
  def initialize(attributes); end
end

class Factory
  CLASSES = {
    a: A,
    b: B,
    c: C
  }.freeze

  def self.factory_method(class_name, attributes)
    raise 'Class Name not found' unless CLASSES[class_name]

    (CLASSES[class_name]).new(attributes)
  end
end

instance_of_a = Factory.factory_method(:a, { name: 'test' })
puts instance_of_a.is_a?(A) # true
puts instance_of_a.is_a?(B) # false
puts instance_of_a.is_a?(C) # false

```