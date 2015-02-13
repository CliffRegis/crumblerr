class HeartsController < ApplicationController
  def create
    @heart = Heart.new(heart_params)
      if @heart.save
         redirect_to @heart.post, notice: 'Heart was successfully created.' 
        else
         redirect_to root_url, notice: "sorry no Heart" 
        end
    end


private
def heart_params
      params.require(:heart).permit(:post_id)
    end
end