FactoryGirl.define do  

   
  factory :user do
    email "example@example.com"
    password "gogogogogo"
  end

  factory :course do
  	title "my course"
  	description "course description"
  	cost 29.99
  end

  factory :section do
    title "a section"
  end

  factory :lesson do
    
  end
 
end