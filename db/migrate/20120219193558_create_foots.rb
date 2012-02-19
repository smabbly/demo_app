class CreateFoots < ActiveRecord::Migration
  def change
    create_table :foots do |t|
      t.string :Foot
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
