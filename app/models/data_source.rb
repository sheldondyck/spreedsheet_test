# == Schema Information
#
# Table name: data_sources
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  value      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DataSource < ActiveRecord::Base
  attr_accessible :name, :value
end
