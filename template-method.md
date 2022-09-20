# Template Method Pattern 

## Problem

## Solution
Basically create a **template class** and a template method that has the steps(calling methods) of the algorithm and override the steps(methods) on the child classes. 

```ruby

# should be abstract class
class TemplateClass
  def template_method(data)
    global_filter(data)
    filter(data)
    append_copy_rights(data)
  end

  private

  def global_filter(data)
    data.concat("Global @Template super class\n")
  end
  def filter(data)
    raise 'filter Method not implemented'
  end

  def append_copy_rights(data)
    raise 'append_copy_rights Method not implemented'
  end
end

# Subclass of a template class that implements its own methods logic.
class Mickey < TemplateClass
  private

  def filter(data)
    # filter logic
  end

  def append_copy_rights(data)
    data.concat('@Micky subclass')
  end
end

# Subclass of a template class that implements its own methods logic.
class Mouse < TemplateClass
  private

  def filter(data)
    # filter logic
  end

  def append_copy_rights(data)
    data.concat('@Mouse subclass')
  end
end

class WithoutFilterMehode < TemplateClass
  private

  def append_copy_rights(data)
    data.concat('@Mouse subclass')
  end
end

puts Mickey.new.template_method('')
# Global @Template super class
# @Micky subclass

puts Mouse.new.template_method('')
# Global @Template super class
# @Mouse subclass

puts WithoutFilterMehode.new.template_method('')
# raises a 'filter Method not implemented'

```