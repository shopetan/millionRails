class Order < ActiveRecord::Base
  belongs_to :user
  has_many :item
end
