class HomeController < ApplicationController
  def index
    if user_signed_in?
      render "tsm_home/index"
    else
      render "index"
  end

end
end
