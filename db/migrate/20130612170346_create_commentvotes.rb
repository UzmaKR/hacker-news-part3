class CreateCommentvotes < ActiveRecord::Migration
  def change
    create_table :commentvotes do |t|
      t.references :comment
      t.references :user
      t.integer    :updownvote

    end
    add_index(:commentvotes, [:user_id, :comment_id], :unique => true)
  end
end
