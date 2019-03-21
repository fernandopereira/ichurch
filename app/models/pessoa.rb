class Pessoa < ApplicationRecord
  validates_presence_of :nome, :data_nascimento

  def self.aniversariantes
    aniversariantes = {}
    
    proximos_aniversariantes.each do |pessoa|
      next if pessoa.data_nascimento.blank?
      next if Date.parse("#{pessoa.data_nascimento.day}/#{pessoa.data_nascimento.month}/#{Date.today.year}") < Date.today

      data = I18n.l(Date.parse("1/#{pessoa.data_nascimento.month}/#{Date.today.year}"), format: :short2)
      aniversariantes[data] ||= []
      aniversariantes[data] << pessoa
    end

    aniversariantes
  end

  private

  def self.proximos_aniversariantes
    Pessoa.all.order('extract(MONTH from data_nascimento), extract(DAY from data_nascimento)')
  end
end
