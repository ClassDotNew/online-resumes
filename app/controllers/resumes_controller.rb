class ResumesController < ApplicationController
  # 	@students = Unirest.get("http://localhost:3500/api/v1/students").body

  # 	render 'index.html.erb'
  # end
  	def index
      @title = "Student Resumes"
      @students = Unirest.get('http://localhost:3500/api/v1/students').body.sort_by { |student| student["firstName"]}
      p @students

      render 'index.html.erb'
    
  	end

  def show

  	@student = Unirest.get("http://localhost:3500/api/v1/students/#{params[:id]}").body


  	render 'show.html.erb'

  end

end
