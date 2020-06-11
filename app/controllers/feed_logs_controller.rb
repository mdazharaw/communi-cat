class FeedLogsController < ApplicationController
  before_action :set_feed_log, only: [:show, :edit, :update, :destroy]

  # GET /feed_logs
  # GET /feed_logs.json
  def index
    @feed_logs = FeedLog.all
  end

  # GET /feed_logs/1
  # GET /feed_logs/1.json
  def show
  end

  # GET /feed_logs/new
  def new
    @feed_log = FeedLog.new
  end

  # GET /feed_logs/1/edit
  def edit
  end

  # POST /feed_logs
  # POST /feed_logs.json
  def create
    @feed_log = FeedLog.new(feed_log_params)

    respond_to do |format|
      if @feed_log.save
        format.html { redirect_to @feed_log, notice: 'Feed log was successfully created.' }
        format.json { render :show, status: :created, location: @feed_log }
      else
        format.html { render :new }
        format.json { render json: @feed_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feed_logs/1
  # PATCH/PUT /feed_logs/1.json
  def update
    respond_to do |format|
      if @feed_log.update(feed_log_params)
        format.html { redirect_to @feed_log, notice: 'Feed log was successfully updated.' }
        format.json { render :show, status: :ok, location: @feed_log }
      else
        format.html { render :edit }
        format.json { render json: @feed_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feed_logs/1
  # DELETE /feed_logs/1.json
  def destroy
    @feed_log.destroy
    respond_to do |format|
      format.html { redirect_to feed_logs_url, notice: 'Feed log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed_log
      @feed_log = FeedLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feed_log_params
      params.require(:feed_log).permit(:user_id, :cat_id, :comment)
    end
end
