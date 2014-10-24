class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :t11
      t.integer :t12
      t.integer :t1s
      t.integer :t21
      t.integer :t22
      t.integer :t2s
      t.datetime :match_date
      t.boolean :doubles

      t.timestamps
    end
  end
end
