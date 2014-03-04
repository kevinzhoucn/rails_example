class Maintain::InviteArticlesController < ApplicationController
  before_filter :maintain_authenticate
  after_filter :maintain_authenticate
  # GET /maintain/invite_articles
  # GET /maintain/invite_articles.json
  def index
    @maintain_invite_articles = Maintain::InviteArticle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maintain_invite_articles }
    end
  end

  def plan
    @maintain_invite_article = Maintain::InviteArticle.new
  end

  # GET /maintain/invite_articles/1
  # GET /maintain/invite_articles/1.json
  def show
    @maintain_invite_article = Maintain::InviteArticle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maintain_invite_article }
    end
  end

  # GET /maintain/invite_articles/new
  # GET /maintain/invite_articles/new.json
  def new
    @maintain_invite_article = Maintain::InviteArticle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maintain_invite_article }
    end
  end

  # GET /maintain/invite_articles/1/edit
  def edit
    @maintain_invite_article = Maintain::InviteArticle.find(params[:id])
  end

  # POST /maintain/invite_articles
  # POST /maintain/invite_articles.json
  def create
    @maintain_invite_article = Maintain::InviteArticle.new(params[:maintain_invite_article])

    respond_to do |format|
      if @maintain_invite_article.save
        format.html { redirect_to maintain_plan_path, notice: t('.invite_article_created_successfully.') }
        format.json { render json: @maintain_invite_article, status: :created, location: @maintain_invite_article }
      else
        format.html { render action: "new" }
        format.json { render json: @maintain_invite_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maintain/invite_articles/1
  # PUT /maintain/invite_articles/1.json
  def update
    @maintain_invite_article = Maintain::InviteArticle.find(params[:id])

    respond_to do |format|
      if @maintain_invite_article.update_attributes(params[:maintain_invite_article])
        format.html { redirect_to @maintain_invite_article, notice: 'Invite article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maintain_invite_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintain/invite_articles/1
  # DELETE /maintain/invite_articles/1.json
  def destroy
    @maintain_invite_article = Maintain::InviteArticle.find(params[:id])
    @maintain_invite_article.destroy

    respond_to do |format|
      format.html { redirect_to maintain_invite_articles_url }
      format.json { head :no_content }
    end
  end

  private
    def maintain_authenticate
      if session[:invite_user_id]
        reset_session if ( session[:last_seen] < 60.minutes.ago )
      else        
        session[:last_seen] = Time.now
        redirect_to maintain_login_path
      end
    end
end