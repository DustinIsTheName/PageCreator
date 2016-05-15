class Page < ActiveRecord::Base
	serialize :modules, Array

	validates :title, presence: true

	has_many :text_blocks
	accepts_nested_attributes_for :text_blocks, :allow_destroy => true
end
