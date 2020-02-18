class AddingForeignKey < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :bathroom_id, :integer
  end
end
