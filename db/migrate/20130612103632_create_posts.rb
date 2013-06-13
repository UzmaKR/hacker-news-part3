class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :url
      t.string :title
      t.references :user
      t.integer :votecount, :default => 0

      t.timestamps
    end
  end
end
