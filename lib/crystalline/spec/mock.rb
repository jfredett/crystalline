module RSpec
  module Mocks
    class Mock
      def inspect
        "double(#{@name.inspect})"
      end
    end
  end
end
