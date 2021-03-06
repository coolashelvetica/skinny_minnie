class UsersController < ApplicationController
	
def index
  @users = User.all

  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @users }
    end
end

def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
end

def followers
     @user = User.find(params[:user])
     @followers = @user.followers(User)
   
     response = {:user => @user, :followers => @followers}
     
     respond_to do |format|
      format.html  #followers.html.erb
      format.xml {render :xml => response}
    end
end

def following
     @user = User.find(params[:user])
     @following = @user.followees(User)

     response = {:user => @user, :following => @following}
     
     respond_to do |format|
      format.html  #following.html.erb
      format.xml {render :xml => response}
    end
end

def follow
  #do something like
  user = User.find(params[:user])
  current_user.follow!(user)
  redirect_to :back
  flash[:success] = "Followed!"
end

def unfollow
  #do something like
  user = User.find(params[:user])
  current_user.unfollow!(user)
  redirect_to :back
  flash[:success] = "Unfollwed!"
  end
end