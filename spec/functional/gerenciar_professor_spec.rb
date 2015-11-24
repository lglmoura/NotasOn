# coding: utf-8

require 'spec_helper'

feature 'gerenciar professor' do

  scenario 'incluir professor' do #, :js => true  do
    visit new_professor_path
    preencher_e_verificar_professor

  end

  scenario 'alterar professor' do #, :js => true  do

    professor = FactoryGirl.create(:professor)
    visit edit_professor_path(professor)
    preencher_e_verificar_professor


  end

  scenario 'excluir professor' do #, :js => true  do

    professor = FactoryGirl.create(:professor)
    visit professors_path
    click_link 'Excluir'

  end



  def preencher_e_verificar_professor


    fill_in 'Matricula',  :with => "123456"
    fill_in 'Nome',  :with => "Luiz Gustavo"
    fill_in 'Endereço', :with   => "Rua"
    fill_in 'Telefone',  :with => "123456"
    fill_in 'Senha',  :with => "1q2w3e4r"

    click_button 'Salvar'
    page.should have_content 'Matricula: 123456'
    page.should have_content 'Nome: Luiz Gustavo'
    page.should have_content 'Endereço: Rua'
    page.should have_content 'Telefone: 123456'
    page.should have_content 'Senha: 1q2w3e4r'

  end

end
