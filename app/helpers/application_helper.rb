module ApplicationHelper
#return a title on a page basis
def title
base_title ="Ruby on rails Tutorial Sample"
if @title.nil?
base_title
else
	"#{base_title} | #{@title}"
	end
	end

end
