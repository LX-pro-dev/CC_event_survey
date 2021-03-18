json.extract! event, :id, :status, :total_event, :nb_participants, :created_at, :updated_at
json.url event_url(event, format: :json)
