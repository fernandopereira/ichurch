require "application_system_test_case"

class PessoasTest < ApplicationSystemTestCase
  setup do
    @pessoa = pessoas(:one)
  end

  test "visiting the index" do
    visit pessoas_url
    assert_selector "h1", text: "Pessoas"
  end

  test "creating a Pessoa" do
    visit pessoas_url
    click_on "New Pessoa"

    fill_in "Bairro", with: @pessoa.bairro
    fill_in "Cep", with: @pessoa.cep
    fill_in "Data nascimento", with: @pessoa.data_nascimento
    fill_in "Endereco", with: @pessoa.endereco
    fill_in "Nome", with: @pessoa.nome
    fill_in "Observacoes", with: @pessoa.observacoes
    fill_in "Telefone", with: @pessoa.telefone
    fill_in "Tipo", with: @pessoa.tipo
    click_on "Create Pessoa"

    assert_text "Pessoa was successfully created"
    click_on "Back"
  end

  test "updating a Pessoa" do
    visit pessoas_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @pessoa.bairro
    fill_in "Cep", with: @pessoa.cep
    fill_in "Data nascimento", with: @pessoa.data_nascimento
    fill_in "Endereco", with: @pessoa.endereco
    fill_in "Nome", with: @pessoa.nome
    fill_in "Observacoes", with: @pessoa.observacoes
    fill_in "Telefone", with: @pessoa.telefone
    fill_in "Tipo", with: @pessoa.tipo
    click_on "Update Pessoa"

    assert_text "Pessoa was successfully updated"
    click_on "Back"
  end

  test "destroying a Pessoa" do
    visit pessoas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pessoa was successfully destroyed"
  end
end
