class Phone

  def initialize(number)
    @number = number
  end

  def number
    @number = @number.gsub(/\D/, '') # Test 1/2

    @number[0] = '' if @number.length > 10 && @number[0] == '1' # Test 3
    @number = '0000000000' if @number.length != 10 # Test 4/5

    @number
  end

  def area_code
    @number[0..2] # Test 6
  end

  def to_s
    "(#{@number[0..2]}) #{@number[3..5]}-#{@number[6..9]}" # Test 7
  end

end