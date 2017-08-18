class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :location
      t.text :description
      t.string :jobtype
      t.decimal :price

      t.timestamps
    end
  end
end
