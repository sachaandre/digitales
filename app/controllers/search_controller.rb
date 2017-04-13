class SearchController < ApplicationController
  def search
  if params[:q].nil?
    @aventures = []
  else
    @aventures = Aventure.search params[:q]
  end
end
end
