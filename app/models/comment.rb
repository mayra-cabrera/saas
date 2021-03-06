class Comment < ActiveRecord::Base
  belongs_to :owner, polymorphic: true
  belongs_to :author, class_name: "User", foreign_key: "author_id"

  validates :content, presence: true
end
