class Page < ActiveRecord::Base
  has_many :sections, -> { order(position: :asc) }

  enum category: [
    :aboutus,
    :travel,
    :stay,
    :schedule,
    :registry
  ]

  def slug
    title.gsub(" ","_").downcase
  end
end
