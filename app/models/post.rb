class Post < ApplicationRecord
  has_many :comments, deptendent: :destroy
end
