class AddHostnameToImpressions < ActiveRecord::Migration
  def change
    add_column :impressions, :hostname, :string
  end
end
