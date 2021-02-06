class PlansController < ApplicationController
  before_action :move_to_index, except:  [:index, :show]

  def index
    @plans =Plan.all.order("created_at DESC")
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan=Plan.new(plan_params)
    if @plan.save
      redirect_to root_path
    else 
      render :new
    end
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index     
    end
  end

  def plan_params
    params.require(:plan).permit(:image, :name, :description, :category_id, :term_id, :price_id).merge(user_id: current_user.id)
  end

end
