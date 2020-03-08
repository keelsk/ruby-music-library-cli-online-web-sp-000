class MusicLibraryController
  def initialize(path = "./db/mp3s")
    @path = path
    new_import = MusicImporter.new(@path)
    new_import.import
  end
  
  def call
    puts "Welcome to your music library!"
    puts "To list all of yoursongs, enter 'list songs'."
  end
end