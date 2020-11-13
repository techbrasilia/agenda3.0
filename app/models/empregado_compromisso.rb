class EmpregadoCompromisso < ApplicationRecord
    has_and_belongs_to_many :empregado
    has_and_belongs_to_many :compromisso
end