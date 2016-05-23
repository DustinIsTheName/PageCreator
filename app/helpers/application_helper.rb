module ApplicationHelper
	def link_to_new_module(text, form_obj, _module)
		select = '<div class="row"><div class="form-group col-md-10">'
		select += render('modules_select', :i => _module, :p => form_obj)
		select += '</div><div class="form-group col-md-2">'
		select += link_to 'Remove', '#', class: 'btn btn-primary remove-module'
		select +=	'</div></div>'
		link_to text, '#', data: {select: select.gsub(/\n/, '')}, class: 'add-module'
	end
end
