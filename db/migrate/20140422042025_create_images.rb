class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :picture, polymorphic: true
      t.timestamps
    end
  end
end
