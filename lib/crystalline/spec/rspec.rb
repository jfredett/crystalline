require 'crystalline/spec/macros'

module Crystalline
  module Spec
    def self.install!
      RSpec.configure do |config|
        config.before do
          allow_message_expectations_on_nil
        end

        config.treat_symbols_as_metadata_keys_with_true_values = true

        config.extend(Crystalline::Spec::DSL::Macros)
      end
    end
  end
end
