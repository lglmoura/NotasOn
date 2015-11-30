# coding: utf-8

require 'spec_helper'

feature 'gerenciar disciplina' do
  before(:each) do

    @professor = create(:professor, nome: "Gustavo")
  end

  let(:dados) do {

    nome: "Matematica",
    codigo: "MTE001",
    carga: "50",
    professor: "Gustavo"
   }
  end

  scenario 'incluir disciplina' do #, :js => true  do
    visit new_disciplina_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar disciplina' do #, :js => true  do

    disciplina = FactoryGirl.create(:disciplina)
    visit edit_disciplina_path(disciplina)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir disciplina' do #, :js => true  do

    disciplina = FactoryGirl.create(:disciplina, professor: @professor)
    visit disciplinas_path
    save_and_open_page
    click_link 'Excluir'

  end



  def preencher(dados)
    fill_in 'Código',  with: dados[:codigo]
    fill_in 'Nome',  with: dados[:nome]
    fill_in 'Carga', with: dados[:carga]
    select dados[:professor], from: "Professor"

  end

  def verificar(dados)

    page.should have_content "Código: #{dados[:codigo]}"
    page.should have_content "Nome: #{dados[:nome]}"
    page.should have_content "Carga: #{dados[:carga]}"
    page.should have_content "Professor: #{dados[:professor]}"


  end

end
