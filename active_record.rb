require 'active_record'

# Change the following to reflect your database settings
ActiveRecord::Base.establish_connection(
  adapter:  'postgresql', # or 'postgresql' or 'sqlite3' or 'oracle_enhanced'
  database: 'testdb',
  username: 'postgres',
  password: 'pass'
)

# Define your classes based on the database, as always
class Post < ActiveRecord::Base
  #blah, blah, blah
end
class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :source
      t.string :tweetid
      t.string :pure
      t.string :media
      t.string :destination
      t.datetime :time
      t.timestamps
    end
  end
end
# Now do stuff with it
puts Post.find :all


