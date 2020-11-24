module Api
  module V1
    class CompaniesSerializer < ApplicationSerializer
      attributes :name, :country, :currency

    end
  end
end
