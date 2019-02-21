class V1::IssuesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index   
        @issues = Issue.all

        render json: @issues, status: :ok
    end

    def create
        @issue = Issue.new
        @issue.issue_id = params[:issue][:id]
        @issue.action = params[:issue][:state]
        # @issue.repository_id = params[:repository][:id]
        @issue.repository_name = params[:repository][:name]
        @issue.owner_name = params[:repository][:owner][:login]
        if !Issue.where(issue_id: params[:issue][:id]).blank?
            Issue.where(issue_id: params[:issue][:id]).first.destroy!
        end
        # binding.pry
        if !Repository.where(repository_id: params[:repository][:id]).blank?
            @issue.repository = Repository.where(repository_id: params[:repository][:id]).first
        else
            @repository = Repository.new(repository_id: params[:repository][:id])
            @issue.repository = @repository
        end
        @issue.save

        render json: @issue, status: :created
    end

    def show
        if !Issue.where(issue_id: params[:id]).blank?
            @issue = Issue.where(issue_id: params[:id])
            render json: @issue, status: :ok
        else
            # head(:unprocessable_entity)
            redirect_to v1_issues_path
        end

    end


end
