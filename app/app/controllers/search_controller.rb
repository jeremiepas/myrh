class SearchController < ApplicationController

def searchCities
    search do
    query = params[:q]
    City.where('name LIKE ?', "%#{query}%").first
    end
end

def searchCompagnies
    search do
    query = params[:q]
    compagny = Compagny.where('name LIKE ?', "%#{query}%").first
    City.where("compagny_id = ?", compagny.id).first
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