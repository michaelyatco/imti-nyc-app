class AddContentToLocalSchools < ActiveRecord::Migration[5.0]
  def change
    add_column :local_schools, :main_contact, :string
    add_column :local_schools, :address, :string
  end
end
