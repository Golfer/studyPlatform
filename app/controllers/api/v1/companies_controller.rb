module Api
  module V1
    class CompaniesController < Api::V1::ApplicationController
      def index
        companies = Company.where(user: current_user)
        render json: Api::V1::CompaniesSerializer.new(companies).serialized_json, status: :ok
      end
    end
  end
end
