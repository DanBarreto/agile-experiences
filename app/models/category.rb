class Category < ActiveRecord::Base
  has_many :tags
  has_many :lessons_learned, through: :tags, source: :lesson_learned
end
