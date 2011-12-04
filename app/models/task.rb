class Task < ActiveRecord::Base
  has_many :iteration_tasks
  belongs_to :resource
end
