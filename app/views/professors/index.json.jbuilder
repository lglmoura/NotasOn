json.array!(@professors) do |professor|
  json.extract! professor, :id, :matricula, :nome, :endereco, :telefone, :senha
  json.url professor_url(professor, format: :json)
end
