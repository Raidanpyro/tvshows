class CreateSerietests < ActiveRecord::Migration[6.1]
  def change
    create_table :serietests do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
