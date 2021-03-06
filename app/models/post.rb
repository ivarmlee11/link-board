class Post < ActiveRecord::Base
  belongs_to :user

  validates :title,
  presence: true,
  length: { in: 10..100 },
  on: :create

  validates :link,
  url: true,
  on: :create

end
