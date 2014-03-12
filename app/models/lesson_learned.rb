class LessonLearned < ActiveRecord::Base
  has_many :sources
  has_many :references, through: :sources, source: :reference
  
  has_many :tags
  has_many :categories, through: :tags, source: :category
end