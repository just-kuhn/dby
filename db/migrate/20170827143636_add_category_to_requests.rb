class AddCategoryToRequests < ActiveRecord::Migration[5.1]
  def change
    add_reference :requests, :category, index: true, foreign_key: true
  
  end
end
