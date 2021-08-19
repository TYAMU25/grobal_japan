class SearchController < ApplicationController
  def index
    @general_users = @q.result(distinct: true)
  end
end
