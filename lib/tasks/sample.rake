namespace :controller do
  desc "slack_notification"
  task :package => :environment do
    session = ActionDispatch::Integration::Session.new(Rails.application)
    #response = session.post "/my_webhook", { my: "data" }, { "X-Some-Header" => "some value" }
    session.get "/blogs"
    aa = session.response.body
    #puts "Done with response code"
    print aa
  end
end