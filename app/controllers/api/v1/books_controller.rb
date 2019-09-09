class Api::V1::BooksController < ApplicationController

        def index
            @bookcase = Bookcase.find(params[:bookcase_id])
            @books = @bookcase.books
            render json: @books
        end

        def create
            
            @bookcase = Bookcase.find(params[:bookcase_id])
            @book = @bookcase.books.create(book_params)
            if @book.save
              render json: BookcaseSerializer.new(@bookcase).serialized_json, status: :created
            else
              render json: @bookcase.errors, status: :unprocessable_entity
            end
        end
    
        private
        # Never trust parameters from the scary internet, only allow the white list through.
        def book_params
          params.require(:book).permit(:title, :author, :page_count, :spine_color, :bookcase_id)
        end
end
