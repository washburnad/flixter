FactoryGirl.define do  factory :section do
    
  end
 

  factory :user do
    email "example@example.com"
    password "gogogogogo"
  end

  factory :course do
  	title "my course"
  	description "course description"
  	cost 29.99
  end

end