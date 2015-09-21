class CreateImpressions < ActiveRecord::Migration
  def change
    create_table :impressions do |t|
      t.integer :pixel_id
      t.string :user_agent
      t.string :ip
      t.string :referer

      t.timestamps
    end
  end
end
