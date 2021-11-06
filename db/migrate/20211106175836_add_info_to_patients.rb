class AddInfoToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :uid, :string
    add_column :patients, :provider, :string
  end
end
