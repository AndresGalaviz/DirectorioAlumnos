class AddLastNameSeparation < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :next_of_kin_first_last_name, :string
    add_column :users, :next_of_kin_second_last_name, :string
    add_column :users, :second_last_name, :string
  end
end
