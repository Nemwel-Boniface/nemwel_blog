class CreateComment < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :AuthorId
      t.integer :PostId
      t.string :Text
      t.string :UpdatedAt
      t.string :CreatedAt

      t.timestamps
    end
  end
end
