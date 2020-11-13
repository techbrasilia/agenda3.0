class CreateCompromissos < ActiveRecord::Migration[6.0]
  def change
    create_table :compromissos do |t|
      t.string :data
      t.string :hora
      t.string :tipo
      #t.references :empregado_compromissos, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
