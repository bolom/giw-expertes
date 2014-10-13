ActiveAdmin.register Sponsor do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :name, :url, :remote_logo_url, :rank, :order

  form do |f|
    f.inputs do
      f.input :name
      f.input :url
      f.input :remote_logo_url
      f.input :rank
      f.input :order
    end

    f.actions
  end


  show do |profile|
    attributes_table do
      row :name
      row :url
      row :logo do
        image_tag(sponsor.logo_url)
      end
      row :rank
      row :order
    end
  end

end
