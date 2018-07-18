class CreateAnnounces < ActiveRecord::Migration[5.0]
  def change
    create_table :announces do |t|
      t.string :name
      t.references :compagny, foreign_key: true
      t.references :city, foreign_key: true
      t.date :date
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
