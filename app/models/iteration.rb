class Iteration < ActiveRecord::Base
  has_many :iteration_resources
  has_many :iteration_tasks
end
