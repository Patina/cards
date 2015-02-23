class Project < ActiveRecord::Base
  has_many :cards, -> { order("position") }, dependent: :destroy
  belongs_to :user
  validates_presence_of :title
end
