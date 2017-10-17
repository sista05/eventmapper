class TopController < ApplicationController
  
  def index
    @maps = Map.all
    @hash = Gmaps4rails.build_markers(@maps) do |map, marker|
      marker.lat map.latitude
      marker.lng map.longitude
      # marker.picture({ 
      #   :anchor => [16, 16],
      #   :url => view_context.image_path('girls.png'),
      #   #:url => "https://addons.cdn.mozilla.net/user-media/addon_icons/13/13028-64.png",
      #   :picture => "/images/girls.png",
      #   :width   => "32",
      #   :height  => "32",
      # })
     marker.infowindow map.description
     #marker.infowindow render_to_string(:partial => "/maps/infowindow", :formats => [:html], :locals => { :object => map})
      marker.json({title: map.title})
    end
    
  end
  
  
end
