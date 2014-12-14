Deface::Override.new(virtual_path: 'spree/shared/_products',
                     name: 'product-description-style',
                     add_to_attributes: "li[data-hook='products_list_item']",
                     attributes: { :class => "product" })
