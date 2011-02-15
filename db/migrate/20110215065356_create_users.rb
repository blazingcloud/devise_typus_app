class CreateUsers < ActiveRecord::Migration

  def self.up
    add_column :users, :first_name, :string, :default => "" #, :null => false
    add_column :users, :last_name, :string, :default => "" #, :null => false
    add_column :users, :role, :string #, :null => false
    add_column :users, :status, :boolean, :default => false
    add_column :users, :token, :string #, :null => false
    add_column :users, :salt, :string #, :null => false
    add_column :users, :crypted_password, :string #, :null => false
    add_column :users, :preferences, :string
  end

  def self.down
    drop_table :users
  end

end
