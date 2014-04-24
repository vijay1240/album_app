class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.date :birthdate
      t.text :about_me

      t.timestamps
    end
  end
end
