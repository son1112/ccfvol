class AddNewAttributesToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :coordinator, :string
    add_column :activities, :paintedsign?, :boolean
    add_column :activities, :tickets, :integer
    add_column :activities, :volunteers_needed, :string
  end
end
