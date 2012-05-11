class AddSecondnameToUser < ActiveRecord::Migration
  def change
    add_column :users, :secondname, :string
  end
end
