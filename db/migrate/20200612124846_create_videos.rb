class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.string :filepath
      t.text :description
      t.string :address_1
      t.string :address_2
      t.string :intersection
      t.string :city
      t.string :state
      t.string :zip_code
      t.date :date
      t.time :time
      t.string :suspect_first_name
      t.string :suspect_last_name
      t.string :suspect_license_plate
      t.string :officer_badge_number
      t.string :officer_first_name
      t.string :officer_last_name
      t.string :created_by
      

      t.timestamps
    end
  end
end
