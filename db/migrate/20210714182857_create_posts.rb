class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.references :author, index:true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
