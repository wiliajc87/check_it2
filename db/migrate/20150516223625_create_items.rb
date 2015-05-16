class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name
      t.string :link
      t.string :rotten_score
      t.boolean :on_netflix

      t.timestamps null: false
    end
  end
end
