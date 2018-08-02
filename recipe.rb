gem 'activerecord', '=5.2.0'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'cookbook.sqlite3'
)

class Recipe < ActiveRecord::Base
  field :name, as: :string
  field :prep_time, as: :integer
  field :description, as: :text
  # Text has a higher char limit than string
end

Recipe.auto_upgrade!
at_exit do
  ActiveRecord::Base.connection.close
end