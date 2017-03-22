FactoryGirl.define do
sequence(:email) { |n| "user#{n}@example.com" }
	factory :admin do
		email "rambodmagid@yahoo.com"
        password "4531ramtin"
        
        admin true
    end


    factory :user, class: User do
        email "mahmood.madgidi@farauto.ca"
        password "farAuto2016"
        admin false
        
    end  
end