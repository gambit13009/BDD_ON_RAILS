require 'faker'

10.times do
    user = User.create(name: "#{Faker::HowIMetYourMother.character}")
  end

has_many :comments, class_name: "Comment", foreign_key: "parent_id"
    belongs_to :user
belongs_to :link