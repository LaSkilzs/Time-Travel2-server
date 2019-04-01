require 'csv'
require 'byebug'
namespace :import do

  desc "Import generations from csv"
  task generations: :environment do
    filename = File.join Rails.root, "db/csv/generations.csv"
    CSV.foreach(filename, headers: true) do |row|
      Generation.create(decade: row["decade"].to_i, nickname: row["nickname"], description: row["description"], story: row["story"])
    end
  end 

  desc "Import funfacts from csv"
    task funfacts: :environment do 
      fun_filename = File.join Rails.root, "db/csv/funfacts.csv"
      CSV.foreach(fun_filename, headers: true) do |row|
        FunFact.create(generation_id: row["generation_id"].to_i, fact_length: row["fact_length"], fact: row["fact"])
    end
  end

  desc "Import industries from csv"
    task industries: :environment do
      industry_filename = File.join Rails.root, "db/csv/industries.csv"
      CSV.foreach(industry_filename, headers: true) do |row|
        Industry.create(name: row["name"], summary: row["summary"], available_jobs: row["available_jobs"].to_i, image: row["image"], generation_id: row["generation_id"])
      end
    end

    desc "Import jobs from csv"
      task jobs: :environment do
        job_filename = File.join Rails.root, "db/csv/jobs.csv"
        CSV.foreach(job_filename, headers: true) do |row|
          Job.create(industry_id: row["industry_id"].to_i, name: row["name"], experience: row["experience"], work_environment: row["work_environment"], apprenticeship: row["apprenticeship"], education: row["education"], age: row["age"], gender: row["gender"], travel: row["travel"], start_avg_wage_per_week: row["start_avg_wage_per_week"], end_avg_wage_per_week: row["end_avg_wage_per_week"],low_hours_of_work: row["low_hours_of_work"].to_i, high_hours_of_work: row["high_hours_of_work"].to_i, days_of_week: row["days_of_week"], job_openings: row["job_openings"].to_i, job_score: row["job_score"].to_i, job_description: row["job_description"])
      end
    end

    desc "Import profiles from csv"
      task profiles: :environment do
        profile_filename = File.join Rails.root, "db/csv/profiles.csv"
        CSV.foreach(profile_filename, headers: true) do |row|
          Profile.create(name: row["name"], age: row["age"], gender: row["gender"], marital_status: row["marital_status"], education: row["education"], experience: row["experience"], trade:  row["trade"], available_for_work: row["available_for_work"], avatar: row["avatar"], user_id: row['user_id'])
        end
    end

    desc "Import users from csv"
    task users: :environment do
      user_filename = File.join Rails.root, "db/csv/users.csv"
      CSV.foreach(user_filename, headers: true) do |row|
        User.create(username: row['username'], email: row['email'])
      end
    end

    desc "Import applications from csv"
      task applications: :environment do
        application_filename = File.join Rails.root, "db/csv/applications.csv"
        CSV.foreach(application_filename, headers: true) do |row|
          Application.create(profile_id: row["profile_id"], helpwanted_id: row["helpwanted_id"], jobtitle: row["job_title"], citizenship: row["citizenship"], parent_union: row["parent_union"], parent_trade: row["parent_trade"], entreprenuership: row["entreprenuership"], work_with_others: row["work_with_others"], monotous_task: row["monotous_task"], work_life_balance: row["work_life_balance"], work_environment: ["work_environment"], too_many_hours: row["too_many_hours"], work_location: row["work_location"], app_score: row["app_score"].to_i, status: row['status'])
        end
    end

    desc "Import helpwanteds from csv"
      task helpwanteds: :environment do
        helpwanted_filename = File.join Rails.root, "db/csv/helpwanteds.csv"
        CSV.foreach(helpwanted_filename, headers: true) do |row|
          Helpwanted.create(location: row["location"], wage_per_week: row["wage_per_week"], housing_offered: row["housing_offered"], female: row["female"], image: row["image"], job_id: row["job_id"])
        end
    end
  end

