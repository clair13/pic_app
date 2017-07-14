class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :title
      t.date :date_taken

      t.timestamps
    end
  end
end
