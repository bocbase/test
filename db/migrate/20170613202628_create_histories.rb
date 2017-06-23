class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.date :ymd
      t.integer :category
      t.string :text

      t.timestamps
    end
  end
end
