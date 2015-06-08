class AddBoolsToBeerusers < ActiveRecord::Migration
  def change
    add_column :beerusers, :has, :boolean
    add_column :beerusers, :wants, :boolean
  end
end
