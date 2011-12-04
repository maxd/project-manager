class IterationTask < ActiveRecord::Base
  belongs_to :task
  belongs_to :iteration
  belongs_to :iteration_resource
end
