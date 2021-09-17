class CreateCats < ActiveRecord::Migration[5.2]
  def change
    #VALID_SEX = ["M", "F"]
    create_table :cats do |t|
      
      t.date :birth_date, null: false, presence:true
      t.string :color, null:false, presence:true
      t.string :name, null: false, presence:true
      t.string :sex, limit:1, null:false
      t.text :description, null: false, presence:true

      t.timestamps

      validates :sex, :presence => true, :inclusion => {in: ["M", "F"]}

      
    end
  end
end
