class CreateQuestioners < ActiveRecord::Migration[6.1]
  def change
    create_table :questioners do |t|
      t.string :question
      t.string :options

      t.timestamps
    end
  end
end
