class RelationUsersCompagnies < ActiveRecord::Migration[5.0]
  def change
    add_reference :compagnies, :user, foreign_key: true
  end
end
