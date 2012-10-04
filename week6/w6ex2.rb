class MP3_id3_reader
  attr_accessor :file, :title, :artist, :album, :year, :comment,
                :zerobyte, :track, :genre

  def initialize(file)
    @file = file
    @title = @artist = @album = @year = @comment = @zerobyte = @track = @genre = ''
  end

  def display
    puts "Analyzing File \"#{file}\""
    puts "Title: #{@title}"
    puts "Artist: #{@artist}"
    puts "Album: #{@album}"
    puts "Year: #{@year}"
    puts "Comment: #{comment}"
  end

  def analyze
    f = open(@file, 'r')
    f.seek(-128, IO::SEEK_END)  
    if (tag = f.read(3)) == 'TAG'
      @title = f.read(30)
      @artist = f.read(30)
      @album = f.read(30)
      @year = f.read(4)
      @comment = f.read(28)
      @zerobyte = f.read(1)
      @track = f.read(1)
      @genre = f.read(1)
    end
  end 
end 

song = MP3_id3_reader.new('song.mp3')
song.analyze
song.display

=begin
Exercise2. Write a Ruby program that analyzes an MP3 file. Many MP3
files have a 128-byte data structure at the end called an ID3 tag. These 128 bytes are literally packed with information about the song: its name, the artist, which album it's from, and so on. You can parse this data structure by opening an MP3 file and doing a series of reads from a position near the end of the file. According to the ID3 standard, if you start from the 128th-to-last byte of an MP3 file and read three bytes, you should get the string TAG. If you don't, there's no ID3 tag for this MP3 file, and nothing to do. If there is an ID3 tag present, then the 30 bytes after TAG contain the name of the song, the 30 bytes after that contain the name of the artist, and so on. A sample song.mp3 file is available to test your program. Use Symbols, wherever possible.
=end
