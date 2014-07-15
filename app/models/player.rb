class Player < ActiveRecord::Base
  validates_presence_of :name
  has_many :friendships
  has_many :friends, :through => :friendships


  def friendship_requests
    @friendships = Friendship.where(friend: self, status: 0)
  end  
end
