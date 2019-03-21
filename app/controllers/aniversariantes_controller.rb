class AniversariantesController < ApplicationController
  def index
    @aniversariantes = Pessoa.aniversariantes
  end
end
