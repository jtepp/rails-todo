class DropLists < ActiveRecord::Migration[7.1]
  def up
    drop_table :lists
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end