class Department < ApplicationRecord
	has_many :sections, dependent: :destroy
	has_many :students, through: :sections, dependent: :destroy

	#Validations
	validates :name, presence: true, uniqueness: true

	#Callbacks
	before_save :small_to_CAPS

  	private

  	def small_to_CAPS
  		self.name.upcase!
  	end

end

