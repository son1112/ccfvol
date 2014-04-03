class ShiftsRmTitle < ActiveRecord::Migration
  def change
    remove_column :shifts, :title
  end
end
