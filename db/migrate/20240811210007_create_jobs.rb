class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :pay_rate
      t.string :enrollment_status
      t.string :enrollment_location
      t.datetime :published_at

      t.timestamps
    end
  end
end
