class CreateKittyTrans < ActiveRecord::Migration
  def change
    create_table :kitty_trans do |t|
      t.integer :pID
      t.float :amount
      t.boolean :credit
      t.integer :mID

      t.timestamps
    end
  end
end
