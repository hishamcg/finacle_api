$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'simplecov'

SimpleCov.start

require 'coveralls'
Coveralls.wear!

require 'rspec'
require 'finacle_api'
require 'stringio'
require 'tempfile'
require 'webmock/rspec'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
# Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}


WebMock.disable_net_connect!(:allow => 'coveralls.io')

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end


def a_delete(path)
  a_request(:delete, 'http://localhost:4000' + path)
end

def a_get(path)
  a_request(:get, 'http://localhost:4000' + path)
end

def a_post(path)
  a_request(:post, 'http://localhost:4000' + path)
end

def stub_delete(path)
  stub_request(:delete, 'http://localhost:4000' + path)
end

def stub_get(path)
  stub_request(:get, 'http://localhost:4000' + path)
end

def stub_post(path)
  stub_request(:post, 'http://localhost:4000' + path)
end

def stub_put(path)
  stub_request(:put, 'http://localhost:4000' + path)
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end
