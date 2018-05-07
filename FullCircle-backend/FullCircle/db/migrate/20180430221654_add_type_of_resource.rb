class AddTypeOfResource < ActiveRecord::Migration[5.1]
  def change
    add_column :resources, :type_of_resource, :string
  end
end
