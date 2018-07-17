class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.referance :user
      t.referance :company

      t.timestamps
    end
  end
end
