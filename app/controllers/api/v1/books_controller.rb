class Api::V1::BooksController < ApplicationController

        def index
            @bookcase = Bookcase.find(params[:bookcase_id])
            @books = @bookcase.books
            render json: @books
        end

        def create
            @bookcase = Bookcase.find(params[:bookcase_id])
            @book = @bookcase.books.new(bookcase_params)
            if @book.save
              render json: @bookcase, status: :created
            else
              render json: @bookcase.errors, status: :unprocessable_entity
            end
        end
    
        private
        # Never trust parameters from the scary internet, only allow the white list through.
        def bookcase_params
          params.require(:book).permit(:title, :author, :page_count, :spine_color)
        end
end
