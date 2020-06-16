class AddCommentToCat < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :comment, :text

  end
end
