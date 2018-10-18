# == Schema Information
#
# Table name: bands
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string           not null
#

class Band < ApplicationRecord
  validates :name, :image, presence: true, uniqueness: true
end
