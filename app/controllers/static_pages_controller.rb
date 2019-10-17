class StaticPagesController < ApplicationController
  def home
    if logged_in?
      if is_agent?
        redirect_to add_url
      else
        redirect_to products_url
      end
    end
  end

  def help
    @randome = '232'
  end

  def about
  end
end
