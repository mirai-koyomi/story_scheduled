class CreateWorlds < ActiveRecord::Migration
  def change
    create_table :worlds do |t|

      t.timestamps null: false
    end
  end
end
