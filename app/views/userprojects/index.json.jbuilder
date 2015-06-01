json.array!(@userprojects) do |userproject|
  json.extract! userproject, :id, :name, :desc
  json.url userproject_url(userproject, format: :json)
end
