class VipersController < ApplicationController
  # GET /vipers
  # GET /vipers.json
  def index
    @vipers = Viper.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vipers }
    end
  end

  # GET /vipers/1
  # GET /vipers/1.json
  def show
    @viper = Viper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @viper }
    end
  end

  # GET /vipers/new
  # GET /vipers/new.json
  def new
    @viper = Viper.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @viper }
    end
  end

  # GET /vipers/1/edit
  def edit
    @viper = Viper.find(params[:id])
  end

  # POST /vipers
  # POST /vipers.json
  def create
    @viper = Viper.new(params[:viper])
    @viper.status = "applied"

    respond_to do |format|
      if @viper.save
        format.html { redirect_to @viper, notice: 'Viper was successfully created.' }
        format.json { render json: @viper, status: :created, location: @viper }
      else
        format.html { render action: "new" }
        format.json { render json: @viper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vipers/1
  # PUT /vipers/1.json
  def update
    @viper = Viper.find(params[:id])

    respond_to do |format|
      if @viper.update_attributes(params[:viper])
        format.html { redirect_to @viper, notice: 'Viper was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @viper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vipers/1
  # DELETE /vipers/1.json
  def destroy
    @viper = Viper.find(params[:id])
    @viper.destroy

    respond_to do |format|
      format.html { redirect_to vipers_url }
      format.json { head :no_content }
    end
  end
end
