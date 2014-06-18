class Instructor < ActiveRecord::Base

	# Validar que los atributos sean obligatorios
	validates :tipodocumento, :presence => true
	validates :numedoc, :presence => true
	validates :nombre, :presence => true
	validates :apellido, :presence => true
	validates :area, :presence => true
	validates :rol, :presence => true
	validates :correo, :presence => true
	# validar un atributo booleano
	# validates :genero, inclusion: [true, false]

	# validar que un atributos unicos
    validates :numedoc, uniqueness: { message: "No se puede Repetir" }
    validates :correo, uniqueness: { message: "No se puede Repetir" }


    belongs_to :tipodocumento
  def self.search(search, page)
   where(['upper(nombre) like ?',
   "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
  end
end
