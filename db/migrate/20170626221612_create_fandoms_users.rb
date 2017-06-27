class CreateFandomsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :fandoms_users do |t|
      t.belongs_to :fandom, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
