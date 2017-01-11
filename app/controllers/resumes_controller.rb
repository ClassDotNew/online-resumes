class ResumesController < ApplicationController

  def index

  	# @students = Unirest.get().body
    # @students = [{
    #   "photo" => "https://robohash.org/yvonne_img",
    #   "first_name" => "Yvonne",
    #   "last_name" => "Ike",
    #   "email" => "yvonneike@email.com",
    #   "phone_number" => "555-555-5555",
    #   "linkedin_url" => "www.linkedin.com",
    #   "online_resume_url" => "www.yvonneike.com",
    #   "twitter_handle" => "@yvonneike",
    #   "personal_website_url" => "www.yvonneike.com",
    #   "github_url" => "www.github.com",
    #   "skills" => ["reading", "writing", "sleeping"],
    #   "experiences" =>
    #   [{
    #     "start_date" => 2016,
    #     "end_date" => "present",
    #     "job_title" => "Project Manager",
    #     "company_name" => "Xerox",
    #     "details" => "Work. Work. Work."
    #   },
    #   {
    #     "start_date" => 2015,
    #     "end_date" => 2016,
    #     "job_title" => "Project Manager",
    #     "company_name" => "Expensive Law Firm",
    #     "details" => "Work. Work. Work."
    #   }],
    #   "educations" => 
    #   [{
    #     "start_date" => 1999,
    #     "end_date" => 2003,
    #     "degree" => "BA",
    #     "university_name" => "Cornell",
    #     "details" => "Upstate is too cold."
    #   },
    #   {
    #     "start_date" => 2005,
    #     "end_date" => 2008,
    #     "degree" => "JD",
    #     "university_name" => "NYLS",
    #     "details" => "tired of school"
    #   }]
    # }]

  	render 'index.html.erb'
  end

  def show

  	@resume = resume.find(params[:id])

  	render 'show.html.erb'

  end
end
