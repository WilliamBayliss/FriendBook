class AddColumnsToFriendRequests < ActiveRecord::Migration[6.1]
  def change
    add_reference :friend_requests, :user, null: false, foreign_key: true
    add_reference :friend_requests, :friend, null: false, foreign_key: {to_table: :users}
    add_column :friend_requests, :accepted, :binary
  end
end
