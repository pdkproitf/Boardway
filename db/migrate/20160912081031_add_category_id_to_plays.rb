class AddCategoryIdToPlays < ActiveRecord::Migration[5.0]
  def change
    change_table :plays do |f|
      f.belongs_to :category, index: true
    end
  end
end
