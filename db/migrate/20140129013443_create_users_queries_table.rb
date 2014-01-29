class CreateUsersQueriesTable < ActiveRecord::Migration
  def change
    create_table :queries_users do |t|
      t.belongs_to :user
      t.belongs_to :query
    end
  end
end
