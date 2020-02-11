class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :comment
      t.string :cleanliness
      t.boolean :return
      t.boolean :recommend

      t.timestamps
    end
  end
end
