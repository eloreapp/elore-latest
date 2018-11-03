class VendorsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    if params[:category].blank?
      @vendors = Vendor.all.order( 'created_at DESC' ).paginate(:page => params[:page], :per_page => 12)
    else
      @category_id = Category.find_by(name: params[:category]).id
      @vendors = Vendor.where(category_id: @category_id).paginate(:page => params[:page]).order('created_at DESC')
    end
  end

  def show
    @vendor = Vendor.find( params[:id] )
  end

  def new
    @vendor = current_user.vendors.build
    # @vendor = Vendor.new
  end

  def create
    @vendor = current_user.vendors.build(vendor_params)

    if @vendor.save
      redirect_to root_path, notice: 'Vendor was successfully created!'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def vendor_params
    params.require(:vendor).permit( :name, :body, :url, :facebook_url, :twitter_url, :instagram_url, :email, :image, :category_id )
  end
end
