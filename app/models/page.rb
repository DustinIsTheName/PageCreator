class Page < ActiveRecord::Base
	serialize :modules, Array

	has_many :text_blocks
end
