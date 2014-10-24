class CreateMatchCosts < ActiveRecord::Migration
  def change
    create_table :match_costs do |t|
      t.integer :cost_code
      t.integer :mID

      t.timestamps
    end
  end
end
