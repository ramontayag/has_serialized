$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rubygems'
require 'active_record'
require 'rspec'
require 'has_serialized'
require 'fixtures/category'
require 'fixtures/page'

#Allow to connect to SQLite
root = File.expand_path(File.join(File.dirname(__FILE__), '..'))
Dir.mkdir("db") unless File.directory?("db")
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "#{root}/db/test.db"
)

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
end

def reset_database
  %W(pages categories).each do |table_name|
    ActiveRecord::Base.connection.execute("DROP TABLE IF EXISTS '#{table_name}'")
  end
  ActiveRecord::Base.connection.create_table(:pages) do |t|
    t.string :name
    t.text :dynamic_attributes
    t.integer :category_id
  end
  ActiveRecord::Base.connection.create_table(:categories) do |t|
    t.string :name
    t.text :definition
  end
end

