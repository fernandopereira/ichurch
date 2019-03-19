json.extract! pessoa, :id, :nome, :tipo, :endereco, :data_nascimento, :telefone, :cep, :bairro, :observacoes, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
