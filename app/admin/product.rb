ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :parent_id, :product_category_id, :name, :sku, :permalink, :description, :active, :weight, :price, :cost_price, :featured, :stock_control, :image

  index do

    column :name
    column :sku
    column :description
    column :price, :sortable => :price do |product|
      div :class => "price" do
          number_to_currency product.price
     end
    end

    column "Image" do |product|
        image_tag product.image
    end
    # actions
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
