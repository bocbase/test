class CreateSetlists < ActiveRecord::Migration[5.0]
  def change
    create_table :setlists do |t|
      t.date :ymd
      t.string :title
      t.integer :event_id
      t.text :area
      t.text :place
      t.integer :main
      t.integer :e1
      t.integer :e2
      t.integer :e3
      t.string :s1
      t.string :s2
      t.string :s3
      t.string :s4
      t.string :s5
      t.string :s6
      t.string :s7
      t.string :s8
      t.string :s9
      t.string :s10
      t.string :s11
      t.string :s12
      t.string :s13
      t.string :s14
      t.string :s15
      t.string :s16
      t.string :s17
      t.string :s18
      t.string :s19
      t.string :s20
      t.string :s21
      t.string :s22
      t.string :s23
      t.string :s24
      t.string :s25

      t.timestamps
    end
  end
end
