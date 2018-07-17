class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.date :birthdate
      t.string :lastname
      t.string :name
      t.string :password
      t.text :description
      t.string :email
      t.references :compagny, foreign_key: true, index: true 

      t.timestamp
    end
  end
end
