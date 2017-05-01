require 'rails_helper'

describe UsersController, :type => :controller do
  before do
        @user = User.create!(first_name: 'rombod', last_name: 'madgidi', email: 'rambodmagid@yahoo.com', password: '4531ramtin')
        @user2 = User.create!(first_name: 'mahmood', last_name: 'madgidi', email: 'mahmood.madgidi@farauto.ca', password: 'farAuto2016') 
        #@user = FactoryGirl.create(:user)
        #@user2 = FactoryGirl.create(:user2)
  end

  describe 'GET #show' do

    context 'User is logged in' do
      before do
        sign_in @user
      end

      it 'loads correct user details' do
        get :show, id: @user.id
          expect(response).to have_http_status(200)
          expect(assigns(:user)).to eq @user
        end

      it 'does not load other users details' do
        get :show, id: @user2.id
        expect(response).to redirect_to(root_path)
      end
    end

      context 'No user is logged in' do
        it 'redirects to login' do
          get :show, id: @user.id
            expect(response).to redirect_to(root_path)
        end
      end
  end
end

