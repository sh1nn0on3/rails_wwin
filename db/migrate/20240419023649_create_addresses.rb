class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :street
      t.belongs_to :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
