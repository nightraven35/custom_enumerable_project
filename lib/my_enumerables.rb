module Enumerable
  # Your code goes here
  def my_each_with_index()
    counter = 0
    for element in self
      yield element, counter
      counter += 1
    end
  end

  def my_select()
    result = []
    for element in self
      result << element if yield element
    end
    result
  end

  def my_all?()
    for element in self
      return false unless yield element
    end
    true
  end

  def my_none?()
    for element in self
      return false if yield element
    end
    true
  end

  def my_any?()
    for element in self
      return true if yield element
    end
    false
  end

  def my_count()
    if block_given? 
      counter = 0
      for element in self
        counter += 1 if yield element
      end
      return counter
    end
    length
  end

  def my_inject(default)
    result = default
    for element in self
      result = yield element, result
    end
    result
  end

  def my_map()
    result = []
    for element in self
      result << yield(element)
    end
    result
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each()
    for element in self
      yield element
    end
  end
end
