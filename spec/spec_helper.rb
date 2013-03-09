$: << File.expand_path('../lib', File.dirname(__FILE__))
require 'wildcard_matchers'
require "wildcard_matchers/rspec"

Dir[File.expand_path("support/**/*.rb", File.dirname(__FILE__))].each {|f| require f }

require "pry"
require "tapp"

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
end

# global debug function
# usage:
#   wildcard_match?(actual, expected, &$debug)
def debugger
  ENV["DEBUG"] ? proc {|errors| puts errors } : nil
end
