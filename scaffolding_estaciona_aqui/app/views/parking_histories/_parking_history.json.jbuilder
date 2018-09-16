json.extract! parking_history, :id, :user_id, :parking_id, :fecha_inicio, :fecha_fin, :fecha_registro, :fecha_cancelacion, :motivo_cancelacion, :created_at, :updated_at
json.url parking_history_url(parking_history, format: :json)
