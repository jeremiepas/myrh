class CreateAnnounces < ActiveRecord::Migration[5.0]
  def change
    create_table :announces do |t|
      t.references :city, foreign_key: true
      t.references :compagny, foreign_key: true
      t.date :date
      t.references :quizze, foreign_key: true

      t.timestamps
    end
  end
end
