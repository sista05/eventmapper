class Map < ActiveRecord::Base
    geocoded_by :address
    after_validation :geocode

    validates :title, :description, :address, presence: true
 REGISTRABLE_ATTRIBUTES = %i(
    time(1i) time(2i) time(3i) time(4i) time(5i)
  )

end
