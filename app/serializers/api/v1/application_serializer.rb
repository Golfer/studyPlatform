module Api
  module V1
    class ApplicationSerializer < ActiveModel::Serializer
      include FastJsonapi::ObjectSerializer
    end
  end
end
