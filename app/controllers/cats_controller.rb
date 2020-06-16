class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]

  # GET /cats
  # GET /cats.json
  def index
    if user_signed_in?
      me = current_user
      c = User.find(me.id)
      @initial_sector = c.sector_id
      @sector_name = Sector.find(@initial_sector).name
      @cats = Cat.where(sector: @initial_sector).order(last_fed: :asc)
       else
      @initial_sector = 0
      @cats = Cat.all
    end 
    @sectors = Sector.all
  end

  # GET /cats/1
  # GET /cats/1.json
  def show
  end

  # GET /cats/new
  def new
    if user_signed_in?
      me = current_user
      c = User.find(me.id)
      @sector_id= c.sector_id
    end
    @cat = Cat.new
  end

  # GET /cats/1/edit
  def edit
    if user_signed_in?
      me = current_user
      c = User.find(me.id)
      @sector_id= c.sector_id
    end
  end

  # POST /cats
  # POST /cats.json
  def create
    @cat = Cat.new(cat_params)

    respond_to do |format|
      if @cat.save
        format.html { redirect_to @cat, notice: 'Cat was successfully added to database.' }
        format.json { render :show, status: :created, location: @cat }
      else
        format.html { render :new }
        format.json { render json: @cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cats/1
  # PATCH/PUT /cats/1.json
  def update
    
    respond_to do |format|
      if @cat.update(cat_params)
        format.html { redirect_to @cat, notice: 'Cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat }
      else
        format.html { render :edit }
        format.json { render json: @cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cats/1
  # DELETE /cats/1.json
  def destroy
    @cat.destroy
    respond_to do |format|
      format.html { redirect_to cats_url, notice: 'Cat was removed from database.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat
      @cat = Cat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cat_params
      params.require(:cat).permit(:name, :last_fed, :sector_id, :imageUrl, :comment)
    end
end
