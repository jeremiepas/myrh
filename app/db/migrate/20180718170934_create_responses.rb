class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.references :user, foreign_key: true
      t.references :announce, foreign_key: true
      t.text :answers

      t.timestamps
    end
  end
end
