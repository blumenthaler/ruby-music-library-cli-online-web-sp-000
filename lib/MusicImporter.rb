class MusicImporter
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
   def files
    files = []
      Dir.new(self.path).each do |file|
        files << file if file.length > 5
      end
    files
  end
  
  def import
    
  end
  
end