class FriendshipsController < ApplicationController
    include SessionHelper
    before_action :set_friend, only: [:create]
    before_action :set_friendship, only: [:accept, :reject]

    def create
        friendship = Friendship.create(player: current_player, friend: @friend, status: 0)
        redirect_to :players
    end    

    def accept
        
        player = current_player
        player.friends << @friendship.player
        if player.save
            @friendship.status = 1
            @friendship.save
        end    

        redirect_to :dashboard
    end 

    def reject
        @friendship.destroy
        redirect_to :dashboard
    end  

    private
    def set_friend
        @friend = Player.find(params[:player_id])
    end    

    def set_friendship
        @friendship = Friendship.find(params[:friendship_id])
    end    
end
