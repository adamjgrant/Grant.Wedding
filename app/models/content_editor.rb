class ContentEditor
  def self.move_section(section, params)
    move_position = params[:section][:move_position].to_i
    if move_position == 1
      section.move_higher
    elsif move_position == -1
      section.move_lower
    end
  end
end
