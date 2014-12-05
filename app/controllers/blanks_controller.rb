class BlanksController < ApplicationController
  # GET /blanks
  # GET /blanks.json

  before_filter :auth_current_user, :only => [:show, :edit, :create, :index]
  def index
    @blanks = Blank.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blanks }
    end
  end

  # GET /blanks/1
  # GET /blanks/1.json
  def show
    @blank = Blank.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blank }
    end
  end

  # GET /blanks/new
  # GET /blanks/new.json
  def new

    @blank = Blank.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blank }
    end
  end

  # GET /blanks/1/edit
  def edit
    @blank = Blank.find(params[:id])
  end

  # POST /blanks
  # POST /blanks.json
  def create

    if current_refinery_user
      apply_type = params[:apply_type] # 申请参展(ex_apply) / 记者证申请(ju_apply)
      @blank = Blank.new(params[:blank])
      @blank.user_id = current_refinery_user.id
      respond_to do |format|
        if @blank.save
          # format.html { redirect_to @blank, notice: '您的申请已经向后台提交' }
          # format.json { render json: @blank, status: :created, location: @blank }
          # redirect_to "/media/reporter-reg/reporter_suc"
          if (@blank.apply_type == "ju_apply")
            format.html { redirect_to "/media/reporter-reg/reporter_suc"}
          else
            format.html { redirect_to "/partners/apply/apply_suc"}
          end
        else
          format.html { render action: "new" }
          format.json { render json: @blank.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        @blank = Blank.new
        format.html { render action: "new", notice: '您必须先登录' }
      end
    end

  end

  # PUT /blanks/1
  # PUT /blanks/1.json
  def update
    @blank = Blank.find(params[:id])

    if @blank.update_attributes(params[:blank])
      render json: { blank: @blank }, status: 201, message: '更新成功', :callback => params['callback']
    else
      render json: { blank: @blank }, status: 400, message: '更新失败，请联系管理员', :callback => params['callback']
    end
    # respond_to do |format|
    #   if @blank.update_attributes(params[:blank])
    #     puts "----"* 50
    #     puts  @blank.status
    #     puts params[:blank]
    #     format.html { redirect_to @blank, notice: 'Blank was successfully updated.' }
    #     format.json { head :no_content }
    #   else
    #     format.html { render action: "edit" }
    #     format.json { render json: @blank.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /blanks/1
  # DELETE /blanks/1.json
  def destroy
    @blank = Blank.find(params[:id])
    @blank.destroy

    respond_to do |format|
      format.html { redirect_to blanks_url }
      format.json { head :no_content }
    end
  end

  private

  def auth_current_user
    if (current_refinery_user && current_refinery_user.has_role?(:superuser))
    else
      redirect_to "/"
    end
  end
end
