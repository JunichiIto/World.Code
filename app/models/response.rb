class Response < ActiveRecord::Base
  belongs_to :submit
  validates :description, :language, :source, :presence => true
end
