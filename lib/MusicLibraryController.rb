class MusicLibraryController
  attr_accessor :path
  
  def initialize(path = './db/mp3s')
    @path = path
    new_importer = MusicImporter.new(path)
    new_importer.import
  end
  
  
  
end