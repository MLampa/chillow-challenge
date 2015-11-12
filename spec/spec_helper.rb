require 'pry'

require_relative '../lib/dwelling.rb'
require_relative '../lib/manager.rb'
require_relative '../lib/occupant.rb'

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each do |file|
  require File.basename(file, File.extname(file))
end
