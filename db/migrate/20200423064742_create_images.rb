class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :imageable, polymorphic: true
      t.string :url
      t.date :date_taken

      t.timestamps
    end
  end
end
