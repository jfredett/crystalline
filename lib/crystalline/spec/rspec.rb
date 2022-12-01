require 'crystalline/spec/macros'

module Crystalline
  module Spec
    def self.install!
      RSpec.configure do |config|
        config.before do
          allow_message_expectations_on_nil
        end

        # Enable flags like --only-failures and --next-failure
        config.example_status_persistence_file_path = ".rspec_status"

        # Disable RSpec exposing methods globally on `Module` and `main`
        config.disable_monkey_patching!

        config.expect_with :rspec do |c|
          c.syntax = :should
        end

        config.extend(Crystalline::Spec::DSL::Macros)
      end
    end
  end
end
