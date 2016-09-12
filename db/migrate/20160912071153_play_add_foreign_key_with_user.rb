class PlayAddForeignKeyWithUser < ActiveRecord::Migration[5.0]
  def change
    change_table :plays do |t|
      t.belongs_to :user,index: true
    end
  end
end
