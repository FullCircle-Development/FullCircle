class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.column :filename, :string
      t.column :content_type, :string
      t.column :data, :binary
      t.timestamps
    end
  end
end
