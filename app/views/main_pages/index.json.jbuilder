json.array!(@main_pages) do |main_page|
  json.extract! main_page, :id, :title
  json.url main_page_url(main_page, format: :json)
end
