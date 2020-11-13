class CreateEmpresas < ActiveRecord::Migration[6.0]
  def change
    create_table :empresas do |t|
      t.string :razao_social
      t.string :cnpj
      t.string :endereco

      t.timestamps
    end
  end
end
