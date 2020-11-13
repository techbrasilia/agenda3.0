json.extract! empregado, :id, :nome, :cpf, :email, :compromisso_id, :empresa_id, :created_at, :updated_at
json.url empregado_url(empregado, format: :json)
