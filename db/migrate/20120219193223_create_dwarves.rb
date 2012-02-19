class CreateDwarves < ActiveRecord::Migration
  def change
    create_table :dwarves do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
