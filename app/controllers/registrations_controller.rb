class RegistrationsController < ApplicationController
  before_action :authenticate_admin_user!
end
