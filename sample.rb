require "rubygems"
require "polyglot"
require "treetop"
require "pp"

require "number"
require "simple_test"
require "product_test"


puts "grammar with [1-6]"

e = SimpleTestParser.new.parse("4+1")

pp e

p e.value


f = ProductTestParser.new.parse("4*3^9")

pp f

p f.result