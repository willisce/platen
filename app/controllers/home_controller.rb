class HomeController < TenantController
  def index
    @users = User.all
  end
end
