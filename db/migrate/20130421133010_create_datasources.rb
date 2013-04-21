class CreateDatasources < ActiveRecord::Migration
  def change
    create_table :data_sources do |t|
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
