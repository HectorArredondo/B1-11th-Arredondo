class CreateReciès < ActiveRecord::Migration[5.0]
  def change
    create_table :reciès do |t|
      t.string :name
      t.text :ingredients
      t.text :preparation
      t.string:image

      t.timestamps
    end
  end
end
