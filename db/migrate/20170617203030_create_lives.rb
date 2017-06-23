class CreateLives < ActiveRecord::Migration[5.0]
  def change
    create_table :lives do |t|
      t.date :ymd
      t.string :title
      t.string :text

      t.timestamps

      change_column_null :lives, :created_at, true
    end
  end
end
