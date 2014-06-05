namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Administrador",
                 email: "admin@utask.com",
                 password: "unisimon",
                 password_confirmation: "unisimon",
                 admin: true)
   
    end
  end