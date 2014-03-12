class CreateDeathStars < ActiveRecord::Migration
  def change
    create_table :death_stars do |t|
      t.string :name
      t.datetime :inception_date
      t.decimal :circumference
      t.decimal :area

      t.timestamps
    end
  end
end
