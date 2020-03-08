class MusicImporter
  
  attr_accessor :path
  
  def initialize(path = "./dbmp/mp3s/")
    @path = path
  end
  
  def files
    files = Dir.entries(@path).select {|file| file.include?(".mp3")}
  end
end