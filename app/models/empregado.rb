class Empregado < ApplicationRecord
  belongs_to :empresa
  has_and_belongs_to_many :compromissos

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

	validates :nome, presence: true, length: { maximum: 50 }
	#validates :company_name, presence: true, length: { maximum: 50 }
	#validates :phone, presence: true, length: {maximum: 15}
	validates :email, presence: true, length: { maximum: 255 },
									  format: { with: VALID_EMAIL_REGEX },
									  uniqueness: { case_sensitive: true }

	
end
