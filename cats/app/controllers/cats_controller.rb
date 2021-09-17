class CatsController < ApplicationController
    
      def index
         @cats = Cat.all
         render :index
         #render a link to show pages
      end

      def show
         @cat = Cat.find_by(id: params[:id])
         render :show
      end

      def new
         render :new
      end

      def create
         render json: "creating cat"
      end

end
