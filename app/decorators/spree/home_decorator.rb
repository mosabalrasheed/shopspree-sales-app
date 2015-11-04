module Spree
  class HomeDecorator
    include ActiveModel::Serialization

    def hot_products
      Spree::Product.hot.includes(:product_properties, :variants_including_master, master: :images).limit(5)
    end

    def recommended_products
      Spree::Product.recommended.includes(:product_properties, :variants_including_master, master: :images).limit(5)
    end

    def banners
      Spree::Banner.all
    end
  end
end