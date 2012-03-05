module Sectionizer
  def sections
    secs = @items.reject {|item| item.identifier.include?("media")}
    secs.map! {|section| section.identifier.split("/")[1]}
    secs.uniq!
    secs.delete_if {|item| item.nil? }
  end

  def items_for_section(section)
    @items.reject {|item| !item.identifier.include?(section)}
  end
end
