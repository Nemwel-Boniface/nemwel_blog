class ChangeLikeRefToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :likes, :user
  end
end
