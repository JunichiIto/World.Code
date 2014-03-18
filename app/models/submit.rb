class Submit < ActiveRecord::Base
  has_many :responses
  validates :description, :language, :source, :presence => true
end
