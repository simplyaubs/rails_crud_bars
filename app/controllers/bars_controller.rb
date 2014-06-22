class BarsController < ApplicationController

  def index
    @bar = Bar.new
    @bars = Bar.all
  end

  def create
    @bar = Bar.new(bar_params)
    if @bar.save

      redirect_to bars_path
    else
      render :index
    end
  end

  private
  def bar_params
    params.require(:bar).permit(:name, :drink)
  end

end