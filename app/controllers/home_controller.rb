class HomeController < ApplicationController
  def index
    if user_signed_in?
      render "tsm/index", :layout  => 'tsm' 
    else
      render "index"
  end

end
end
