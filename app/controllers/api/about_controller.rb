class Api::AboutController < ApplicationController

def index

end 

def create
  @about = About.new(
                    title: params[:title],
                    about: params[:about]
                    )
  if @about.save
    render 'show.json.jbuilder'
  else
    render json: {errors: @about.errors.full_messages}, status: :unprocessable_entity
  end
end

def show
  render "show.json.jbuilder"
end  

def update
  @about = About.find(params[:id])

  @about.title = params[:title] || @about.title
  @about.about = params[:about] || @about.about

  @about.save
  render "show.json.jbuilder"
end 

def destroy

end  

end
