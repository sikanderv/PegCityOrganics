ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :parent_id, :product_category_id, :name, :sku, :permalink, :description, :short_description, :active, :weight, :price, :cost_price, :tax_rate_id, :featured, :in_the_box, :stock_control, :default
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
