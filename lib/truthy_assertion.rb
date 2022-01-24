class TruthyAssertion
  def initialize(test_value)
    @test_value = test_value
  end

  def evaluate
    truthy
  end

  private

  def truthy
    unless valid?
      raise "#{@test_value} is not truthy"
    end
  end

  def valid?
    !!@test_value
  end
end
