class CreateMetals < ActiveRecord::Migration
  def change
    create_table :metals do |t|
      t.decimal :density
      t.decimal :melting_point
      t.decimal :hardness
      t.decimal :cost
      t.string :type

      t.timestamps
    end
  end
end
