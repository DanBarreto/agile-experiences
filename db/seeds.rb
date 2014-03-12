# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

original_hash = YAML.load_file('config/seed.yaml')
original_hash['categories'].map do |c|
  Category.create(c.merge({
    'lessons_learned' => c['lessons_learned'].map do |l|
      LessonLearned.create(l.merge({'references' => Reference.create(l['references'])}))
  end}))
end
