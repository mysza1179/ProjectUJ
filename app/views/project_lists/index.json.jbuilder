json.array!(@project_lists) do |project_list|
  json.extract! project_list, :id, :name, :description
  json.url project_list_url(project_list, format: :json)
end
