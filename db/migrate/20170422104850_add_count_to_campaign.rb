class AddCountToCampaign < ActiveRecord::Migration[5.0]
  def change
    add_column :campaigns, :product_count, :integer, null: false, default: 0
  end
end
