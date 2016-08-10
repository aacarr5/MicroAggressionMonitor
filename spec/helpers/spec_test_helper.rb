module SpecTestHelper   
  def login_admin
    login(:admin)
  end

  def login(user)
    # binding.pry
    user = User.where(:email => user).first
    request.session[:user] = user.id
    # binding.pry
  end

  def current_user
    User.find(request.session[:user])
  end

end