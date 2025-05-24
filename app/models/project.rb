class Project < ApplicationRecord
  has_one :project_business
  has_one :project_design
  has_one :project_technology

  has_many :contacts

  validates :project_title, presence: true
end
