# frozen_string_literal: true

module ApplicationHelper
  def result_image(type)
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
end
