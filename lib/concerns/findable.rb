module Concerns::Findable
  
  def find_by_name(name)
    self.all.detect {|whatever| whatever.name == name}
  end
  
end