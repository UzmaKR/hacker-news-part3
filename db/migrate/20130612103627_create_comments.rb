class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.text :content
        t.references :user
        t.references :post
        t.integer :votecount, :default => 0

        t.timestamps
    end
  end
end
