class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :player_id
      t.integer :friend_id
      t.integer :status
      t.timestamps
    end
  end
end
