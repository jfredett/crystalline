class RSpec::Mocks::Mock
  def inspect
    "double(#{@name.inspect})"
  end
end
