class CreateLents < ActiveRecord::Migration
  def change
    create_table :lents do |t|
      t.date :date
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
