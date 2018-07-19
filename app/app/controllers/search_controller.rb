class SearchController < ApplicationController

def searchCities
    search do
    City.where :name => params[:q]
    end
end

def searchCompagnies
    search do
    Compagny.where :name => params[:q]
    end
end

private

def search(&block)    
    if params[:q]
    @results = yield if block_given?

    render json: @results
    else
    redirect_to root_url, :notice => 'No search query was specified.'
    end
end

end