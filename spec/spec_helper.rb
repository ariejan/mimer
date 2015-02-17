$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'mimer'
require 'rspec'

# Get a filename to a fixture file
def fixture_path(filename)
  File.expand_path(File.dirname(__FILE__) + '/fixtures/' + filename)
end
