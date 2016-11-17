class Section < ActiveRecord::Base
  belongs_to :page

  acts_as_list scope: :page

  before_save :set_defaults

  def set_defaults
    if path.present?
      self.tag = "img"
    else
      self.tag = ""
    end
  end
end
