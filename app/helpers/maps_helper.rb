module MapsHelper
    
    def map_img(map)
        return image_tag(map.image) if map.image?

        unless map.image.blank?
            img_url = map.image
        else
            img_url = 'no_image.png'
        end
        image_tag(img_url)
    end
end
