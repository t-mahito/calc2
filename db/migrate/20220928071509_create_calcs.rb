class CreateCalcs < ActiveRecord::Migration[6.0]
  def change
    create_table :calcs do |t|

      t.timestamps
      t.integer :input , null: false
      t.integer :inputplus
    end
  end
end
