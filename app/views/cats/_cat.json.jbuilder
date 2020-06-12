json.extract! cat, :id, :name, :last_fed, :sector_id, :created_at, :updated_at, :imageUrl
json.url cat_url(cat, format: :json)
