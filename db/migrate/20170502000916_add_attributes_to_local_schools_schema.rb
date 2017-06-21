class AddAttributesToLocalSchoolsSchema < ActiveRecord::Migration[5.0]
  def change
    remove_column :local_schools, :main_contact, :string
    add_column :local_schools, :contact_name, :string
    remove_column :local_schools, :address, :string 
    add_column :local_schools, :school_address, :string
  end
end
