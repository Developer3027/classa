class CreateInquiries < ActiveRecord::Migration[7.1]
  def change
    create_table :inquiries do |t|
      t.string :middle_name
      t.string :current_address
      t.string :current_address_2
      t.string :current_city
      t.string :current_state
      t.string :current_zip
      t.string :current_country
      t.string :lic_type
      t.string :cdl_experience
      t.string :endorsements
      t.string :veteran
      t.string :military_branch
      t.string :moving_violations
      t.text :mv_info
      t.string :preventable_accidents
      t.text :pa_info
      t.string :career_status
      t.string :solo_team
      t.string :interest_team
      t.string :common_freight
      t.string :prefered_freight
      t.string :contact_time
      t.string :contact_method
      t.string :pp_tos
      t.string :bio
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
