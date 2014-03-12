class Source < ActiveRecord::Base
  belongs_to :reference
  belongs_to :lesson_learned
end
