class HikeSerializer
  include JSONAPI::Serializer
  set_type :hike
  attributes :hike_name, :location, :description, :type_of_hike, :total_miles, :allows_camping, :reservations_required, :website
end
