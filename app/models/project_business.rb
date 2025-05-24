class ProjectBusiness < ApplicationRecord
  belongs_to :project

  validates :biz_summary_1, presence: true
  validates :biz_summary_2, presence: true
  validates :biz_summary_3, presence: true

end
