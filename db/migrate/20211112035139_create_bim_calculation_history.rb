class CreateBimCalculationHistory < ActiveRecord::Migration[6.1]
  def change
    create_table :bim_calculation_histories do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.float :height, null: false
      t.float :width, null: false

      t.timestamps
    end
  end
end
