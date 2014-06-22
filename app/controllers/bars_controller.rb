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

  def show
    @bar = Bar.find(params[:id])
  end

  def edit
    @bar = Bar.find(params[:id])
  end

  def update
    @bar = Bar.find(params[:id])
    @bar.update_attributes!(bar_params)

    redirect_to bars_path
  end

  def destroy
    @bar = Bar.find(params[:id]).delete

    redirect_to bars_path
  end

  private
  def bar_params
    params.require(:bar).permit(:name, :drink)
  end

end