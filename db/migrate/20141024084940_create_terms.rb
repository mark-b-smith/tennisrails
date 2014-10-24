class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :title
      t.datetime :sDate
      t.datetime :eDate

      t.timestamps
    end
  end
end
