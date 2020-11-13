class Empresa < ApplicationRecord
    has_many :empregados

    validates :cnpj, presence: true, length: {maximum: 14}
    validates :endereco, presence: true, length: {maximum: 60}
end
