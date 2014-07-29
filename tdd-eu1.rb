require 'minitest/autorun'

# SumOfMultiple.calc()

class SumOfMultiple
  attr_reader :multiple

  def initialize
  end

  def calc(*multiples)
    sum = 0
    (1...10).each do |x|
      multiples.each do |multiple|
        sum += x if x % multiple == 0
      end
    end
    sum
  end

end


class TestSumOfMultiple < MiniTest::Test

  def test_multiples_of_three
    result = SumOfMultiple.new
    result = result.calc(3)
    assert_equal 18, result
  end

  def test_multiples_of_five
    result = SumOfMultiple.new
    result = result.calc(5)
    assert_equal 5, result
  end

  def test_multiples_of_three_and_five
    som = SumOfMultiple.new
    result = som.calc(3, 5)
    assert_equal 23, result
  end

end