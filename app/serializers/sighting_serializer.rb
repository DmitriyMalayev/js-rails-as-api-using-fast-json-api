class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird
  belongs_to :location
  attribute :bird_name do |sighting|
    # use the sighting to get the name of the bird
    sighting.bird.name
  end
end
