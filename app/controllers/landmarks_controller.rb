class LandmarksController < ApplicationController
  get '/landmarks/new' do
    erb :"landmarks/new"
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :"landmarks/edit"
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :"landmarks/show"
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])

    redirect '/landmarks'
  end

  get '/landmarks' do
    erb :"landmarks/index"
  end

  patch '/landmarks/:id' do
    landmark = Landmark.find(params[:id])
    landmark.update(params[:landmark])
    landmark.save

    erb :"landmarks/index"


  end

end
