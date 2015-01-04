class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name
      t.references :state, index: true

      t.timestamps
    end
  end
end
