class DropTableQuestioners < ActiveRecord::Migration[6.1]
  def change
    drop_table :questioners
  end
end
