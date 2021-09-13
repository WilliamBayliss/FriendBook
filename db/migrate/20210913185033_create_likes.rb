class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :imageable, polymorphic: true
      t.references :user_id
      t.timestamps
    end
  end
end
