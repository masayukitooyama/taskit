class Question < ActiveRecord::Base
  belongs_to :task

  acts_as_paranoid
end
