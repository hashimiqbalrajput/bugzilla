class QualityAssurance < User
  scope :projects, -> {where(type: QualityAssurance)}
end