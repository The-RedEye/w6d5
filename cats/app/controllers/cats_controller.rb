class CatsController < ApplicationController
    
      def index
         @cats = Cat.all
         render :index
         #render a link to show pages
      end

      def show
         @cat = Cat.find_by(id: params[:id])
         redirect_to cats_url(@cat)
      end

      def new
         @cat = Cat.new
         render :new
      end

      def create
         render json: "creating cat"
      end

end
