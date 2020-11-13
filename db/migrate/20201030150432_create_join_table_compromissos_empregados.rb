class CreateJoinTableCompromissosEmpregados < ActiveRecord::Migration[6.0]
  def change
    create_join_table :compromissos, :empregados do |t|
       #t.index [:compromisso_id, :empregado_id]
       #t.index [:empregado_id, :compromisso_id]
    end
  end
end
