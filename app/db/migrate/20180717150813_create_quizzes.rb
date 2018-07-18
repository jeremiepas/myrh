class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.text :question
      t.references :user, foreign_key: true
      t.references :compagnie, foreign_key: true

      t.timestamps
    end
  end
end
