# frozen_string_literal: true

json.array! @stylists do |stylist|
  json.id     stylist.id
  json.name   stylist.name
  json.image  stylist.image_url
end
