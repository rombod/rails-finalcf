require 'rails_helper'

describe Product do

	context "when the product has comments" do 

		before do
          @product = Product.create!(name: "race bike")
          @user = User.create(:email => "123@123.com", :password => "12345678" )
          @product.comments.create!(:rating => 1, :user => @user, :body => "hello")
          @product.comments.create!(:rating => 3, :user => @user, :body => "hello")
          @product.comments.create!(:rating => 5, :user => @user, :body => "hello")
        end

        it 'returns the average rating of all comments' do  
           expect(@product.average_rating).to eq 3  
         end  	
	end

    context "is not valid" do 

         before do
	     @product = Product.new(description: "Nice bike")
         end


         it "is not valid" do 
         expect(@product).not_to be_valid
         end
    end     

end







  
