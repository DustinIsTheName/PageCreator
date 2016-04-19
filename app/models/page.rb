class Page < ActiveRecord::Base
	serialize :modules, Hash

	has_many :text_blocks
end
