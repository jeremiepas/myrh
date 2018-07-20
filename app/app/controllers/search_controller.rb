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

def redirectSearchCities
    redirect_to "/search/cities/" + params[:city]
end

def redirectSearchCompagnies
    redirect_to "/search/compagnies/" + params[:compagny]
end

private

def search(&block)    
    if params[:q]
    @results = yield if block_given?

    respond_to do |format|
        format.html { render :show }
        format.json { head :no_content }
    end

    # render json: @results
    else
    redirect_to root_url, :notice => 'No search query was specified.'
    end
end

end