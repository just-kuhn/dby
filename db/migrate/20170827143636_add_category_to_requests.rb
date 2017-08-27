class AddCategoryToRequests < ActiveRecord::Migration[5.1]
  def change
    add_reference :requests, :category, index: true, foreign_key: true, null: false
  end
end
