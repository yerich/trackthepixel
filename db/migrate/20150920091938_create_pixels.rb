class CreatePixels < ActiveRecord::Migration
  def change
    create_table :pixels do |t|
      t.string :token

      t.timestamps
    end
  end
end
