class CreatePorts < ActiveRecord::Migration
  def change
    create_table :ports do |t|
      t.integer :death_star_id
      t.integer :metal_id
      t.string :name
      t.integer :landing_pads
      t.decimal :size
      t.decimal :x
      t.decimal :y
      t.decimal :z
      # t.integer :material_id
      # t.string :material_type

      t.timestamps
    end
  end
end
