class CreateCats < ActiveRecord::Migration[5.2]
  def change

    create_table :cats do |t|
      
      t.date :birth_date, null: false, presence: true
      t.string :color, null: false, presence: true
      t.string :name, null: false, presence: true
      t.string :sex, limit: 1, null: false
      t.text :description, null: false, presence: true
      t.timestamps

    end
  end
end
