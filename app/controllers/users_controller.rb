class UsersController < ApplicationController
  skip_before_action(:authenticate_user!, { :only => [:index, :show] })

  def index
    @list_of_users = User.all.order({ :created_at => :desc })

    render({ :template => "users/index" })
  end

  def show
    @user = User.where({ :id => params.fetch("id") }).at(0)

    render({ :template => "users/show" })
  end
end
