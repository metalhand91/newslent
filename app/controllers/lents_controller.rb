class LentsController < ApplicationController
  before_action :set_lent, only: [:show, :edit, :update, :destroy]

  # GET /lents
  # GET /lents.json
  def index
    @lents = Lent.all
  end
  
  def nlent
    
    @lents = Lent.all
  end
  
  # GET /lents/1
  # GET /lents/1.json
  def show
  end

  # GET /lents/new
  def new
    @lent = Lent.new
  end

  # GET /lents/1/edit
  def edit
  end

  # POST /lents
  # POST /lents.json
  def create
    @lent = Lent.new(lent_params)

    respond_to do |format|
      if @lent.save
        format.html { redirect_to @lent, notice: 'Новость добавлена.' }
        format.json { render :show, status: :created, location: @lent }
      else
        format.html { render :new }
        format.json { render json: @lent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lents/1
  # PATCH/PUT /lents/1.json
  def update
    respond_to do |format|
      if @lent.update(lent_params)
        format.html { redirect_to @lent, notice: 'Новоcть обновлена.' }
        format.json { render :show, status: :ok, location: @lent }
      else
        format.html { render :edit }
        format.json { render json: @lent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lents/1
  # DELETE /lents/1.json
  def destroy
    @lent.destroy
    respond_to do |format|
      format.html { redirect_to lents_url, notice: 'Lent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lent
      @lent = Lent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lent_params
      params.require(:lent).permit(:date, :title, :text)
    end
end
