class ResumesController < ApplicationController

  def index

  	@resumes = Unirest.get().body

  	render 'index.html.erb'
  end

  def show

  	@resume = resume.find(params[:id])

  	render 'show.html.erb'

  end
end
