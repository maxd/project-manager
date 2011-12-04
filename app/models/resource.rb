class Resource < ActiveRecord::Base
  has_many :tasks
  has_many :iteration_resources
end
