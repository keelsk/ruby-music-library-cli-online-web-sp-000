class MusicLibraryController
  def initialize(path = "./dbmp/mp3s/")
    @path = path
    MusicImporter.new(@path)
  end
end