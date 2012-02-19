class CreateTooths < ActiveRecord::Migration
  def change
    create_table :tooths do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
