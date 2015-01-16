task :add_indian_states=>:environment do
  CSV.foreach('lib/tasks/states.csv') do | row |
  state, abbr = row
  Spree::State.create(:name => state,:abbr=> abbr,:country_id=>3)

end
end