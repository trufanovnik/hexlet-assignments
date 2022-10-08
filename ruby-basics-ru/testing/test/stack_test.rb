# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_pop
    stack = Stack.new %w[one two three]
    stack.pop!
    assert { stack.size == 2 }
    assert { stack.to_a == %w[one two] }
    assert { stack.empty? == false }
    assert { stack.clear! == [] }
  end

  def test_push!
    stack = Stack.new %w[one two three]
    stack.push!('four')
    assert { stack.size == 4 }
    assert { stack.to_a == %w[one two three four] }
    assert { stack.empty? == false }
    assert { stack.clear! == [] }
  end

  def test_to_a
    stack = Stack.new %w[one two three]
    stack.to_a
    assert { stack.size == 3 }
    assert { stack.push!('four') == %w[one two three four] }
    assert { stack.empty? == false }
    assert { stack.clear! == [] }
  end

  def test_empty_stack
    stack = Stack.new
    assert { stack.size.zero? }
    assert { stack.to_a == [] }
    assert { stack.empty? == true }
    assert { stack.clear! == [] }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
