class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :tipo
      t.string :endereco
      t.date :data_nascimento
      t.string :telefone
      t.string :cep
      t.string :bairro
      t.text :observacoes

      t.timestamps
    end
  end
end
