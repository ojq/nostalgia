class AddNipToUser < ActiveRecord::Migration
  def change
    add_column :users, :nip, :string
  end
end
