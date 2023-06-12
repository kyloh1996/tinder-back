class CreatePractices < ActiveRecord::Migration[7.0]
  def change
    create_table :practices do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.text :image
      t.string :description

      t.timestamps
    end
  end
end
