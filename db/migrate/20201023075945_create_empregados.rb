class CreateEmpregados < ActiveRecord::Migration[6.0]
  def change
    create_table :empregados do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.references :empresa, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
