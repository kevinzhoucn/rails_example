class Maintain::InviteUsersController < ApplicationController
  # GET /maintain/invite_users
  # GET /maintain/invite_users.json
  def index
    @maintain_invite_users = Maintain::InviteUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maintain_invite_users }
    end
  end

  # GET /maintain/invite_users/1
  # GET /maintain/invite_users/1.json
  def show
    @maintain_invite_user = Maintain::InviteUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maintain_invite_user }
    end
  end

  # GET /maintain/invite_users/new
  # GET /maintain/invite_users/new.json
  def new
    @maintain_invite_user = Maintain::InviteUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maintain_invite_user }
    end
  end

  # GET /maintain/invite_users/1/edit
  def edit
    @maintain_invite_user = Maintain::InviteUser.find(params[:id])
  end

  # POST /maintain/invite_users
  # POST /maintain/invite_users.json
  def create
    @maintain_invite_user = Maintain::InviteUser.new(params[:maintain_invite_user])

    respond_to do |format|
      if @maintain_invite_user.save
        format.html { redirect_to @maintain_invite_user, notice: 'Invite user was successfully created.' }
        format.json { render json: @maintain_invite_user, status: :created, location: @maintain_invite_user }
      else
        format.html { render action: "new" }
        format.json { render json: @maintain_invite_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maintain/invite_users/1
  # PUT /maintain/invite_users/1.json
  def update
    @maintain_invite_user = Maintain::InviteUser.find(params[:id])

    respond_to do |format|
      if @maintain_invite_user.update_attributes(params[:maintain_invite_user])
        format.html { redirect_to @maintain_invite_user, notice: 'Invite user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maintain_invite_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintain/invite_users/1
  # DELETE /maintain/invite_users/1.json
  def destroy
    @maintain_invite_user = Maintain::InviteUser.find(params[:id])
    @maintain_invite_user.destroy

    respond_to do |format|
      format.html { redirect_to maintain_invite_users_url }
      format.json { head :no_content }
    end
  end
end
