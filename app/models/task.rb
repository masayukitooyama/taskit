class Task < ActiveRecord::Base
  belongs_to :category
  has_many   :questions

  acts_as_paranoid
end
