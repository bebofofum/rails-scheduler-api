class StreamSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :schedule, :stream_graphic_url
end
