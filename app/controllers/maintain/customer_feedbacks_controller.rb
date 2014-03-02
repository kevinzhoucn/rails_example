class Maintain::CustomerFeedbacksController < ApplicationController
  # GET /maintain/customer_feedbacks
  # GET /maintain/customer_feedbacks.json
  def index
    @maintain_customer_feedbacks = Maintain::CustomerFeedback.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maintain_customer_feedbacks }
    end
  end

  # GET /maintain/customer_feedbacks/1
  # GET /maintain/customer_feedbacks/1.json
  def show
    @maintain_customer_feedback = Maintain::CustomerFeedback.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maintain_customer_feedback }
    end
  end

  # GET /maintain/customer_feedbacks/new
  # GET /maintain/customer_feedbacks/new.json
  def new
    @maintain_customer_feedback = Maintain::CustomerFeedback.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maintain_customer_feedback }
    end
  end

  # GET /maintain/customer_feedbacks/1/edit
  def edit
    @maintain_customer_feedback = Maintain::CustomerFeedback.find(params[:id])
  end

  # POST /maintain/customer_feedbacks
  # POST /maintain/customer_feedbacks.json
  def create
    @maintain_customer_feedback = Maintain::CustomerFeedback.new(params[:maintain_customer_feedback])

    respond_to do |format|
      if @maintain_customer_feedback.save
        format.html { redirect_to @maintain_customer_feedback, notice: 'Customer feedback was successfully created.' }
        format.json { render json: @maintain_customer_feedback, status: :created, location: @maintain_customer_feedback }
      else
        format.html { render action: "new" }
        format.json { render json: @maintain_customer_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maintain/customer_feedbacks/1
  # PUT /maintain/customer_feedbacks/1.json
  def update
    @maintain_customer_feedback = Maintain::CustomerFeedback.find(params[:id])

    respond_to do |format|
      if @maintain_customer_feedback.update_attributes(params[:maintain_customer_feedback])
        format.html { redirect_to @maintain_customer_feedback, notice: 'Customer feedback was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maintain_customer_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintain/customer_feedbacks/1
  # DELETE /maintain/customer_feedbacks/1.json
  def destroy
    @maintain_customer_feedback = Maintain::CustomerFeedback.find(params[:id])
    @maintain_customer_feedback.destroy

    respond_to do |format|
      format.html { redirect_to maintain_customer_feedbacks_url }
      format.json { head :no_content }
    end
  end
end
