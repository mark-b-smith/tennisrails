class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first
      t.string :last
      t.boolean :full_charge
      t.boolean :play_singles
      t.boolean :pref9
      t.boolean :only9
      t.boolean :active

      t.timestamps
    end
  end
end
