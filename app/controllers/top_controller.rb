class TopController < ApplicationController
  
  def index
    @maps = Map.all
    @hash = Gmaps4rails.build_markers(@maps) do |map, marker|
      # binding.pry
      marker.lat map.latitude
      marker.lng map.longitude
     # marker.infowindow render_to_string(partial: "/maps/test", locals: { map: map})
      marker.infowindow render_to_string(partial: "/maps/infowindow",  locals: { map: map})
      # marker.picture({
      #   url: "https://addons.cdn.mozilla.net/user-media/addon_icons/13/13028-64.png",
      #   width: "100",
      #   height: "100",
      #   scaledWidth: "32",
      #   scaledHeight: "32",
      # })
      marker.json({title: map.title})
    end
    
  end
  
  
end


