class ResumesController < ApplicationController

  def index

    @title = "Student Resumes"
    @students = Unirest.get('http://localhost:3000/api/v1/students/').body
  	render 'index.html.erb'
    
  end

  def show

  	@resume = resume.find(params[:id])

  	render 'show.html.erb'

  end
end
