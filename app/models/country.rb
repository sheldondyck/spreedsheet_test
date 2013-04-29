# == Schema Information
#
# Table name: countries
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  abbreviation :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Country < ActiveRecord::Base
  attr_accessible :abbreviation, :name

  has_many :gdp_statistics, dependent: :delete_all
end
