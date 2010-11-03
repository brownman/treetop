require "rubygems"
require "polyglot"
require "treetop"
require "pp"

require "number"
require "simple_test"
require "product_test"

module IntegerExtension
 
  
  def pow(k)
    puts "#{self.text_value.to_i}/#{k.text_value}"
    l = elements.map{|n| n.text_value.gsub("^", "**")}
		return eval(l.to_s)
  end
  
  def debug
    puts self.text_value
  end
  
end


Treetop::Runtime::SyntaxNode.send(:include, IntegerExtension)

puts "grammar with [1-6]"

e = SimpleTestParser.new.parse("4+1")

pp e

p e.value


f = ProductTestParser.new.parse("4*3^2")

pp f

p f.result