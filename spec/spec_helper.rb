require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'shoulda/matchers'

ActiveRecord::Migration.maintain_test_schema! if defined?(ActiveRecord::Migration)
RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end
