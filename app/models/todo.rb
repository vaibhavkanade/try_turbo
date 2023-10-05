class Todo < ApplicationRecord
	validates :title, presence: true
	enum status: { incomplete: 0, complete: 1 }

	default_scope { order(updated_at: :desc) }
end
