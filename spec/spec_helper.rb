$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'mimer'
require 'spec'
require 'spec/autorun'

Spec::Runner.configure do |config|
  
end

# Get a filename to a fixture file
def fixture_path(filename)
  File.expand_path(File.dirname(__FILE__) + '/fixtures/' + filename)
end