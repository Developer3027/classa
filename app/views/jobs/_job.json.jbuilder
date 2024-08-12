json.extract! job, :id, :title, :content, :pay_rate, :enrollment_status, :enrollment_location, :published_at, :created_at, :updated_at
json.url job_url(job, format: :json)
json.content job.content.to_s
