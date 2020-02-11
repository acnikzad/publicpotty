class Api::BathroomsController < ApplicationController

  def index 
    @bathrooms = Bathroom.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @bathroom = Bathroom.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create
    response = HTTP.get("https://opendata.arcgis.com/datasets/b9e7fa6d1d104833b3f04268d7f682dc_0.geojson").parse
    p response{"fields"}

    @bathroom = Bathroom.create(
      park: params[:park],
      latitude: params[:latitude],
      longitude: params[:longitude]
      )
    @bathroom.save
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @bathroom = Bathroom.find_by[:id]
    @bathroom.park = params[:park] || @bathroom.park
    @bathroom.latitude = params[:latitude] || @bathroom.latitude
    @bathroom.longitude = params[:longitude] || @bathroom.longitude

    response = HTTP.headers(:accept => "application/json",)
    .get("https://services5.arcgis.com/54falWtcpty3V47Z/arcgis/rest/services/Parks_Public_Restrooms/FeatureServer/0/query?where=1%3D1&outFields=*&outSR=4326&f=json")
    console.log "response"

    render 
  end

  def destroy
  end

  def bathrooms
    p HTTP.get("https://services5.arcgis.com/54falWtcpty3V47Z/arcgis/rest/services/Parks_Public_Restrooms/FeatureServer/0/query?where=1%3D1&outFields=*&outSR=4326&f=json").parse

  end


end
