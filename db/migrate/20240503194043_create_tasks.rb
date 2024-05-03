class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.references :list, null: false, foreign_key: true
      t.string :label
      t.text :notes
      t.integer :status
      t.date :due

      t.timestamps
    end
  end
end
