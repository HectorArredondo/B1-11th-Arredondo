class RecièsController < ApplicationController
  before_action :set_reciè, only: [:show, :edit, :update, :destroy]

  # GET /reciès
  # GET /reciès.json
  def index
    @reciès = Reciè.all
  end

  # GET /reciès/1
  # GET /reciès/1.json
  def show
  end

  # GET /reciès/new
  def new
    @reciè = Reciè.new
  end

  # GET /reciès/1/edit
  def edit
  end

  # POST /reciès
  # POST /reciès.json
  def create
    @reciè = Reciè.new(reciè_params)

    respond_to do |format|
      if @reciè.save
        format.html { redirect_to @reciè, notice: 'Reciè was successfully created.' }
        format.json { render :show, status: :created, location: @reciè }
      else
        format.html { render :new }
        format.json { render json: @reciè.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reciès/1
  # PATCH/PUT /reciès/1.json
  def update
    respond_to do |format|
      if @reciè.update(reciè_params)
        format.html { redirect_to @reciè, notice: 'Reciè was successfully updated.' }
        format.json { render :show, status: :ok, location: @reciè }
      else
        format.html { render :edit }
        format.json { render json: @reciè.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reciès/1
  # DELETE /reciès/1.json
  def destroy
    @reciè.destroy
    respond_to do |format|
      format.html { redirect_to reciès_url, notice: 'Reciè was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reciè
      @reciè = Reciè.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reciè_params
      params.require(:reciè).permit(:name, :ingredients, :preparation, :image)
    end
end
