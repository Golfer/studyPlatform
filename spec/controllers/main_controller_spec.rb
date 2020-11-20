require_relative '../rails_helper'

describe MainController, type: :request do
  subject { create(:user) }

  context '#index' do
    before(:each) do
      sign_in subject
      get root_path
    end

    it { expect(response).to have_http_status(200) }
  end
end
