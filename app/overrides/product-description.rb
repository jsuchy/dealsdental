Deface::Override.new(virtual_path: 'spree/shared/_products',
                     name: 'product-description',
                     insert_before: "span[itemprop=offers]",
                     text: "<%= truncate(product.meta_description, length: 45) %>")
