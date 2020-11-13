class Compromisso < ApplicationRecord
    has_and_belongs_to_many :empregados
end
