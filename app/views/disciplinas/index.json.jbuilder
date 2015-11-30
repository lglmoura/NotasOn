json.array!(@disciplinas) do |disciplina|
  json.extract! disciplina, :id, :codigo, :nome, :carga, :professor_id
  json.url disciplina_url(disciplina, format: :json)
end
