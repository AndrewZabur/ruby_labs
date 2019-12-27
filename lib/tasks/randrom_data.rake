namespace :db do
  namespace :seed do
    task random: :environment do
    	require 'faker'
      	seed_file = File.join(Rails.root, 'db', 'random_data.rb')
      	load seed_file
      	p 'Done!'
    end
  end
end
