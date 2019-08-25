class Api::V1::BookcasesController < ApplicationController

    def index
        @bookcases = Bookcase.all
        render json: BookcaseSerializer.new(@bookcases).serialized_json
    end

end
