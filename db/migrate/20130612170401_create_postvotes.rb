class CreatePostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|
      t.references :post
      t.references :user
      t.integer :updownvote
    end
    add_index(:postvotes, [:user_id, :post_id], :unique => true)
  end
end
