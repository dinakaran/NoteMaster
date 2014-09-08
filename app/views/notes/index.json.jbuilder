json.array!(@notes) do |note|
  json.extract! note, :id, :name, :description, :user_id, :importance
  json.url note_url(note, format: :json)
end
