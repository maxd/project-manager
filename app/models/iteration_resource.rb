class IterationResource < ActiveRecord::Base
  has_many :daily_meetings
  has_many :iteration_tasks

  belongs_to :iteration
  belongs_to :resource
end
