class Operacio < ActiveRecord::Base
	def self.search(search, page)
     where(['upper(area) like ?',
     "%#{search}%".upcase]).paginate(page: page, per_page: 1).order("area")
    end


end
