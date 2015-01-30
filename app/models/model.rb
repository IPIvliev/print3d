class Model < ActiveRecord::Base
  attr_accessible :count_down, :count_see, :file, :image, :name, :pay, :text, :user_id
end
