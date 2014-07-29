ActiveAdmin.register Link do
  config.sort_order = 'created_at_desc'
  config.per_page = 15

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column :name
    column :description
    column :url do |link|
      a href: link.url do
        link.url[0..40]
      end
    end
    column :created_at
    actions
  end

end
