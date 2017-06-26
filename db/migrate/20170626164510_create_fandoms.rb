class CreateFandoms < ActiveRecord::Migration[5.1]
  def change
    create_table :fandoms do |t|
      t.string :title
      t.string :source
      t.string :description

      t.timestamps
    end
  end
end
