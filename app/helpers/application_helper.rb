# frozen_string_literal: true

module ApplicationHelper
  def record_image(type)
    case type
    when Motorbike.name
      'https://cdn.room58.com/2023/06/02/b66ee9d0f9ffed49c6fe023c5cd442ca_0d10903ef1a4c494.webp'
    when Helicopter.name
      'https://api.army.mil/e2/c/images/2020/09/22/441221ad/original.jpg'
    when Plane.name
      'https://m.media-amazon.com/images/I/61D-WraFUhL._AC_UF894,1000_QL80_.jpg'
    when Ship.name
      'https://gifs.eco.br/wp-content/uploads/2023/06/imagens-de-barco-png-22.png'
    else
      'https://www.nissanlatam.com/Catalogos/versa2020/peru/images/color/6.jpg'
    end
  end

  def vehicle_type_filters(vehicle_type)
    filters = []
    %w[all car helicopter motorbike plane ship].each do |vehicle|
      filters << content_tag(:label, id: "vehicle_type_#{vehicle}") do
        radio_button_tag('vehicle_type', vehicle, vehicle == vehicle_type) + vehicle.capitalize
      end
    end

    safe_join(filters)
  end
end
