class ChangeActivityBooleanNameForPaintedsign < ActiveRecord::Migration
  def change
    remove_column :activities, :paintedsign?
    add_column :activities, :painted_sign, :boolean
  end
end
