######################################
=begin
b = 5

if defined?(a)
  puts "Переменная 'a' определена"
else
  puts "Переменная 'a' неопределена"
end

if defined?(b)
  puts "Переменная 'b' определена"
else
  puts "Переменная 'b' неопределена"
end
=end
#######################################
# that was old version of this program
#
######################################
# this is v 2.0
#
=begin
def method
  c = 3
  puts "Переменная '$a': #{defined?($a)}"
  puts "Переменная 'b': #{defined?(b)}"
  puts "Переменная 'c': #{defined?(c)}"
end

$a = 1

b = 2

method

puts "Переменная '$a': #{defined?($a)}"
puts "Переменная 'b': #{defined?(b)}"
puts "Переменная 'c': #{defined?(c)}"
=end
######################################
# that was 2.0 version of this program
#
######################################
# this is class_variable_defined version
#

variable = 1

class MyClass
  def initialize(variable)
    @variable = variable
  end

  def check_variables
    puts "В классе:"
    puts "Переменная 'variable': #{defined?(variable)}"
    puts "Переменная '@variable': #{defined?(@variable)}"
  end
end

obj = MyClass.new(variable)

obj.check_variables

puts "Вне класса:"
puts "Переменная 'variable': #{defined?(variable)}"
puts "Переменная '@variable': #{defined?(@variable)}"




