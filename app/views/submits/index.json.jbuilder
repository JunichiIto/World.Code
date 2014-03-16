json.array!(@submits) do |submit|
  json.extract! submit, :id, :description, :language, :source
  json.url submit_url(submit, format: :json)
end
