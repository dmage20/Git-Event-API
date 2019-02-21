class V1::RepositoriesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @repository = Repository.find(params[:repository_id])   
        @issues = @repository.issues

        render json: @issues, status: :ok
    end
    
end
