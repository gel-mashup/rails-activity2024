=begin
obj1 = Example.new
obj2 = Example.new

puts Example.class_variable  # Output: 2
=end
class Example
  @@class_variable = 0

  def initialize
    @@class_variable += 1
  end

  def self.class_variable
    @@class_variable
  end
end


=begin
obj1 = Example.new("Alice")
obj2 = Example.new("Bob")

obj1.display_name  # Output: Name: Alice
obj2.display_name  # Output: Name: Bob
=end
# class Example
#   def initialize(name)
#     @name = name
#   end

#   # display_name
#   def display_name
#     puts "Name: #{@name}"
#   end
# end
