json.extract! parkinghistory, :id, :user_id, :parking_id, :fecha_inicio, :fecha_fin, :fecha_registro, :fecha_cancelacion, :motivo_cancelacion, :created_at, :updated_at
json.url parkinghistory_url(parkinghistory, format: :json)
