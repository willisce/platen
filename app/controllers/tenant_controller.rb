class TenantController < ApplicationController
  before_filter :authenticate_user!
  around_filter :lock_down

  private
    def lock_down
      current_tenant = current_user
      Multitenant.with_tenant current_tenant do
        yield
      end
    end
end