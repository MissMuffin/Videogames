class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :studio
      t.text :comment
      t.integer :stars

      t.timestamps
    end
  end
end
