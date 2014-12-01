class Result < ActiveRecord::Base
  
  #IMPORTANT!!!  I think the code below may be useless!!
  def self.search(search)
  	search_condition = "%" + search + "%"
  	find(:all, :conditions => ['title LIKE ? OR description LIKE?', search_condition, search_condition])
  end

end
