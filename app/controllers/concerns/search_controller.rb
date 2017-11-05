class SearchController < ApplicationController
  def searchUsers
    users = Users.all
  end
end
