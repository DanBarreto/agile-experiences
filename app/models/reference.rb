class Reference < ActiveRecord::Base
  has_many :sources
  has_many :lessons_learned, through: :sources, source: :lesson_learned
end