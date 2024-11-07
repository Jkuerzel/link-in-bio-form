class IteminputController < ApplicationController
  def formpage
    

    render({ :template => "item_templates/inputform" })
  end

  def add_data
    

    x = Item.new
    x.link_url=params.fetch("url_string")
    x.thumbnail_url=params.fetch("img_descr")
    x.link_description=params.fetch("url_descr")
    x.save

    redirect_to("/")
  end
end
