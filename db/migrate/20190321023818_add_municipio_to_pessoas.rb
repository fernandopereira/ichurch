class AddMunicipioToPessoas < ActiveRecord::Migration[5.2]
  def change
    add_column :pessoas, :municipio, :string
    add_column :pessoas, :numero, :string
    add_column :pessoas, :uf, :string
  end
end
