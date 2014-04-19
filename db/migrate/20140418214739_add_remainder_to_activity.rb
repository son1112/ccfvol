class AddRemainderToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :remainder, :integer
  end
end
