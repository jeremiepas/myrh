class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :lastname
      t.string :name
      t.string :email
      t.string :password
      t.date :birthdate
      t.text :description
      t.references :compagny, foreign_key: true, index: true 

      t.timestamp
    end
  end
end
