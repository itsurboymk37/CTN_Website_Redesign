class CreateSignatures < ActiveRecord::Migration[6.0]
  def change
    create_table :signatures do |t|
      t.string :name
      t.string :city_state
      t.string :country

      t.timestamps
    end
  end
end
