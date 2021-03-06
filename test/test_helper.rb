require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'hubgrub'

require 'minitest/autorun'
require 'minitest/reporters'

reporter_options = { color: true, slow_count: 5 }
Minitest::Reporters.use!(
  [Minitest::Reporters::DefaultReporter.new(reporter_options)]
)
