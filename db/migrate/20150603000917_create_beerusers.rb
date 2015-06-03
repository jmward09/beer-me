class CreateBeerusers < ActiveRecord::Migration
  def change
    create_table :beerusers do |t|
      t.belongs_to :beer, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
