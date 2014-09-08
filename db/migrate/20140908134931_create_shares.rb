class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.references :note, index: true
      t.integer :owner_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
