class CreateWorlds < ActiveRecord::Migration
  def change
    create_table :worlds do |t|
      t.string :world_name, null: false
      t.string :description
      t.string :status, null: false, default: 'draft'

      t.timestamps null: false
    end
  end
end
