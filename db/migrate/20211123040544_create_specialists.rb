class CreateSpecialists < ActiveRecord::Migration[6.1]
  def change
    create_table :specialists do |t|
      t.string :name
      t.text :description
      t.text :phone

      t.timestamps
    end
  end
end
