class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.date :birthedate
      t.string :lastname
      t.string :name
      t.string :password
      t.string :email
      t.text :description
      t.string :roles

      t.timestamps
    end
  end
end
