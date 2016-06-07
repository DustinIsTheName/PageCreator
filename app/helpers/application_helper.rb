module ApplicationHelper
	def link_to_new_module(text, form_obj, _module)
		text_block_object = form_obj.object.send(:text_blocks).klass.new
		text_block_id = text_block_object.object_id

		select = '<div class="row"><div class="form-group col-md-10">'
		select += render('modules_select', :i => _module, :p => form_obj)
		select += '</div><div class="form-group col-md-2">'
		select += link_to 'Remove', '#', class: 'btn btn-primary remove-module'
		select +=	'</div></div>'
		text_block = '<div class="well">'
		text_block += form_obj.fields_for(:text_blocks, text_block_object, child_index: text_block_id) do |builder|
			render('text_block_options', :field => builder)
		end
		# text_block += render('modules_select'
		text_block += '</div>'
		link_to text, '#', data: {select: select.gsub(/\n/, ''), text_block: text_block.gsub(/\n/, '')}, class: 'add-module'
	end
end
