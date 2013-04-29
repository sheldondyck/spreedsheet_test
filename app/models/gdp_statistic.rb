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
end
