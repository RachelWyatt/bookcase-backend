class Api::V1::BookcasesController < ApplicationController

    def index
        @bookcases = Bookcase.all
        render json: BookcaseSerializer.new(@bookcases).serialized_json
    end

    def show
      @bookcase = Bookcase.first
      render json:@bookcase
    end

    def create
        @bookcase = Bookcase.new(bookcase_params)
        if @bookcase.save
          render json: BookcaseSerializer.new(@bookcase), status: :created
        else
          render json: @bookcase.errors, status: :unprocessable_entity
        end
    end

    private
    # Never trust parameters from the scary internet, only allow the white list through.
    def bookcase_params
      params.require(:bookcase).permit(:name)
    end
end


