class CreateGdpStatistics < ActiveRecord::Migration
  def change
    create_table :gdp_statistics do |t|
      t.foreign_key :country
      t.date :year
      t.decimal :value

      t.timestamps
    end

    add_foreign_key(:gdp_statistics, :countries, dependent: :delete)

    add_index(:gdp_statistics, :country_id)
    add_index(:gdp_statistics, :year)
  end
end
