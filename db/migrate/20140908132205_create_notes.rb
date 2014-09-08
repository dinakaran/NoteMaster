class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.text :description
      t.references :user, index: true
      t.string :importance

      t.timestamps
    end
  end
end
