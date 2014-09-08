class SharesController < ApplicationController
  def new
    @note = Note.find params[:note_id]
    @share = Share.new
    @receivers = User.where.not(id: current_user.id).pluck(:email, :id)
  end

  def create
    @note = Note.find params[:note_id]
    #get the list of receivers except the current user
    @receivers = User.where.not(id: current_user.id).pluck(:email, :id)
    @share = Share.new(set_params)

    respond_to do |format|
      if @share.save
        format.html { redirect_to note_path(@note), notice: "Thanks for sharing this note" }
      else
        format.html { render 'new' }
      end

    end
  end


  private

  def set_params
   params.require(:share).permit(:note_id, :owner_id, :receiver_id)
  end
end
