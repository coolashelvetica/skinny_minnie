class HomeController < ApplicationController
  def index
    if user_signed_in?
      render "tsmhome/index", :layout  => 'tsmhome' 
    else
      render "index"
  end

end
end
