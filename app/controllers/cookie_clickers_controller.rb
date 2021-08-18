class CookieClickersController < ApplicationController
  def index
    @cookie_clicker = CookieClicker.new
  end

  def show
    @cookie_clicker = CookieClicker.find(params[:id])
  end

  def new
    @cookie_clicker = CookieClicker.new(click_count: 0)
  end

  def create
    @cookie_clicker = CookieClicker.new(clicker_params)
    @cookie_clicker.save
    redirect_to @cookie_clicker
  end

  def edit
    @cookie_clicker = CookieClicker.find(params[:id])
  end

  def update
    @cookie_clicker = CookieClicker.find(params[:id])
    @cookie_clicker.update(clicker_params)
    redirect_to @cookie_clicker
  end

  private
    def clicker_params
      params.require(:cookie_clicker).permit(:click_count,:model_id)
    end
end
