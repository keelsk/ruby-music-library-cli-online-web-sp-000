class MusicLibraryController
  def initialize(path = "./db/mp3s")
    @path = path
    new_import = MusicImporter.new(@path)
    new_import.import
  end
  
  def call
    puts "Welcome to your music library!"
  end
end