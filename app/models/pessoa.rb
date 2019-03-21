class Pessoa < ApplicationRecord
  validates_presence_of :nome, :data_nascimento

  def self.aniversariantes
    aniversariantes = {}
    
    proximos_aniversariantes.each do |pessoa|
      next if Date.today.month >= pessoa.data_nascimento.month && 
              Date.today.day >= pessoa.data_nascimento.day

      data = I18n.l(Date.parse("1/#{pessoa.data_nascimento.month}/#{Date.today.year}"), format: :short2)
      aniversariantes[data] ||= []
      aniversariantes[data] << pessoa
    end

    aniversariantes
  end

  private

  def self.proximos_aniversariantes
    Pessoa.all.order('data_nascimento DESC, nome DESC')
  end
end
