class AddVariantToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :variants, :orders, index: true
  end
end
