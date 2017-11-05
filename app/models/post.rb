class Post < ActiveRecord::Base
  belongs_to :wall, class_name: 'User'
end
