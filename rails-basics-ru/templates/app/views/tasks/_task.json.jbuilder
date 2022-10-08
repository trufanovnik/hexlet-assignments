json.extract! task, :id, :name, :status, :creator, :completed, :created_at, :updated_at
json.url task_url(task, format: :json)
