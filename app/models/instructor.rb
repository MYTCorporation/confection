class Instructor < ActiveRecord::Base
  belongs_to :tipodocumento
  def self.search(search, page)
   where(['upper(nombre) like ?',
   "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
  end
end
