class Developer < User
  scope :projects, -> {where(type: Developer)}
end