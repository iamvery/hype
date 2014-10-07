require 'sequel'

module Hype
  DB = Sequel.sqlite

  DB.create_table :posts do
    primary_key :id
    String :title, null: false
    String :body, null: false, default: ''
  end
end
