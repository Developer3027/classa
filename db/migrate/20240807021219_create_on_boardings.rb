class CreateOnBoardings < ActiveRecord::Migration[7.1]
  def change
    create_table :on_boardings do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :dob
      t.string :current_address
      t.string :current_address_2
      t.string :current_city
      t.string :current_state
      t.string :current_zip
      t.string :current_country
      t.string :ssn_sin
      t.string :emergency_contact
      t.string :emergency_phone
      t.string :license
      t.string :drive_experience
      t.string :endorsements
      t.string :military
      t.string :veteran
      t.string :moving_violations
      t.string :preventable_accidents
      t.string :current_status
      t.string :solo_team
      t.string :interest_team
      t.string :common_freight
      t.string :prefered_freight
      t.string :contact_time
      t.string :contact_method

      t.timestamps
    end
  end
end
