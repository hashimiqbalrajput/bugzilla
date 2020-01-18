class Manager < User
	scope :projects, -> {where(type: Manager)}
end