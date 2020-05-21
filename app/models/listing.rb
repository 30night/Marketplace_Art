class Listing < ApplicationRecord
  belongs_to :user
  def can_edit?(user)
    return user && (user == self.user || user.has_role?(:admin))
  end
   has_one_attached :picture
end
