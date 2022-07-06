class RenameLikesColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :likes, :CreatedAt, :string
    remove_column :likes, :UpdatedAt, :string
    remove_column :likes, :AuthorId, :integer
    remove_column :likes, :PostId, :integer
  end
end
