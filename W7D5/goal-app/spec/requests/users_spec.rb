require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:user) { create(:user) }

  describe "GET #index" do
    it 'renders index properly' do
      user = create(:user)

      get users_url
  
      expect(response).to render_template(:index)
      expect(response).to have_http_status(200)
      expect(response.body).to include("All Users")
    end

    it 'lists the username of all users' do
      user = create(:user)
      get users_url
      expect(response.body).to include(user.username)
    end

  end

end
