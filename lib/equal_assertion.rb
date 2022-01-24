class EqualAssertion
  def initialize(test_value_1, test_value_2)
    @test_value_1 = test_value_1
    @test_value_2 = test_value_2
  end

  def evaluate
    equal
  end

  private

  def equal
    unless valid?
      raise "#{@test_value_1} not equal? #{@test_value_2}"
    end
  end

  def valid?
    @test_value_1.equal?(@test_value_2)
  end
end
