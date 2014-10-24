class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.float :cost
      t.datetime :asOf
      t.boolean :active

      t.timestamps
    end
  end
end
