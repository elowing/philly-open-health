json.array!(@data_sources) do |data_source|
  json.extract! data_source, :id, :name, :description, :homepageurl
  json.url data_source_url(data_source, format: :json)
end
