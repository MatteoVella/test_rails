json.extract! informazioni, :id, :nome, :cognome, :email, :telefono, :created_at, :updated_at
json.url informazioni_url(informazioni, format: :json)
