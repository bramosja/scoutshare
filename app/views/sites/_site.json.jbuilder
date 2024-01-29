json.extract! site, :id, :name, :description, :needs_permit, :notes, :created_at, :updated_at
json.url site_url(site, format: :json)
