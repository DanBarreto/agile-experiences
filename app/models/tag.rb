class Tag < ActiveRecord::Base
  belongs_to :category
  belongs_to :lesson_learned
end
