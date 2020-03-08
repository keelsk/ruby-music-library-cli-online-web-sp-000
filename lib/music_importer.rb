class MusicImporter
  
  attr_accessor :path
  
  def initialize(path = "./dbmp/mp3s/")
    @path = path
  end
  
  def files
    files = Dir.entries(@path).each {|file| file.include?(".mp3")}
  end
  
  def import
    Song.create_from_filename(file)
  end
end