class Operacio < ActiveRecord::Base

	# Validar que los atributos sean obligatorios
	validates :area, :presence => true
	validates :cantidadProceso, :presence => true
	validates :maquinas, :presence => true
	validates :instructorCargo, :presence => true
	validates :insumos, :presence => true
	validates :Referencia, :presence => true
	validates :Descripcion, :presence => true
	
	def self.search(search, page)
     where(['upper(area) like ?',
     "%#{search}%".upcase]).paginate(page: page, per_page: 1).order("area")
    end


end
