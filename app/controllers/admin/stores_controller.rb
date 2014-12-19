module Admin
  class StoresController < ApplicationController
    # GET /stores
    # GET /stores.json
    before_filter :find_placeview_page, :set_cart, :set_products
    def index
      @stores = Store.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @stores }
      end
    end

    # GET /stores/1
    # GET /stores/1.json
    def show
      @store = Store.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @store }
      end
    end

    # GET /stores/new
    # GET /stores/new.json
    def new
      @store = Store.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @store }
      end
    end

    # GET /stores/1/edit
    def edit
      @store = Store.find(params[:id])
    end

    # POST /stores
    # POST /stores.json
    def create
      @store = Store.new(params[:store])

      respond_to do |format|
        if @store.save
          format.html { redirect_to "/admin/stores/"+@store.id.to_s(), notice: 'Store was successfully created.' }
          format.json { render json: @store, status: :created, location: @store }
        else
          format.html { render action: "new" }
          format.json { render json: @store.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /stores/1
    # PUT /stores/1.json
    def update
      @store = Store.find(params[:id])

      respond_to do |format|
        if @store.update_attributes(params[:store])
          format.html { redirect_to "/admin/stores/"+@store.id.to_s(), notice: 'Store was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @store.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /stores/1
    # DELETE /stores/1.json
    def destroy
      @store = Store.find(params[:id])
      @store.destroy

      respond_to do |format|
        format.html { redirect_to "/admin/stores" }
        format.json { head :no_content }
      end
    end

    def editxy
      @store = Store.find(params[:id])
    end

    def find_placeview_page
      @place_view_page = ::Refinery::Page.find("placeview")
    end

    def set_cart
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end

    def set_products
      fiter = params[:place_name]
      @products = Product.where("number like '%#{fiter}%'")
    end
  end

end