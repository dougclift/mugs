json.array!(@mugs) do |mug|
  json.extract! mug, :id, :first_name, :middle_name, :last_name, :agency, :slug, :birthdate, :notes
  json.url mug_url(mug, format: :json)
end
