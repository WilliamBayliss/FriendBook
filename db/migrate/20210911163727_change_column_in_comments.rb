class ChangeColumnInComments < ActiveRecord::Migration[6.1]
  def change
    change_column :comments, :likes, :int, :default => 0
  end
end
