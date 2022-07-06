class DeleteUsersColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :CreatedAt, :string
    remove_column :posts, :UpdatedAt, :string
    remove_column :posts, :AuthorId, :string
  end
end
