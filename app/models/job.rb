class Job < ApplicationRecord
  validates :title, :company, :location, :description, :jobtype, :price, presence: true
  validates :price, numericality: true
  validates :description, length: { maximum: 500 }
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0}
end
