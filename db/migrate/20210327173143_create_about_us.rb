class CreateAboutUs < ActiveRecord::Migration[6.0]
  def change
    create_table :about_us do |t|

      t.timestamps
    end
  end
end
