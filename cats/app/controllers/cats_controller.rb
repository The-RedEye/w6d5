class CatsController < ApplicationController
    
      def index
         render @cats 
         #render a link to show pages
      end

      def show
         @cat = Cat.find_by(params[:id])
         redirect_to cats_url(@cat)
      end

      def new
         @cat = Cat.new
         render :new
      end

end
