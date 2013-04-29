# == Schema Information
#
# Table name: gdp_statistics
#
#  id         :integer          not null, primary key
#  country_id :integer
#  year       :date
#  value      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GdpStatistic < ActiveRecord::Base
  attr_accessible :country_id, :value, :year

  belongs_to :country

  def self.by_abbreviation_and_year(country_abbrev, year)
    joins(:country).where(:countries => {:abbreviation => country_abbrev.upcase},
                                        :gdp_statistics => {:year => year_to_date(year)}).first
  end

  private
    def self.year_to_date(year)
      "#{year}-01-01"
    end
end
